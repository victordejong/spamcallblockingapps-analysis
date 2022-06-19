package com.huawei.hms.common.internal;

import java.util.ArrayList;
import java.util.ListIterator;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/BindResolveClients.class */
public class BindResolveClients {
    private static final Object LOCK_INST = new Object();
    private ArrayList<ResolveClientBean> mClientList;

    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/BindResolveClients$SingletonManager.class */
    public static class SingletonManager {
        private static final BindResolveClients INSTANCE = new BindResolveClients();

        private SingletonManager() {
        }
    }

    private BindResolveClients() {
        this.mClientList = new ArrayList<>();
    }

    public static BindResolveClients getInstance() {
        return SingletonManager.INSTANCE;
    }

    public boolean isClientRegistered(ResolveClientBean resolveClientBean) {
        boolean contains;
        synchronized (LOCK_INST) {
            contains = this.mClientList.contains(resolveClientBean);
        }
        return contains;
    }

    public void notifyClientReconnect() {
        synchronized (LOCK_INST) {
            ListIterator<ResolveClientBean> listIterator = this.mClientList.listIterator();
            while (listIterator.hasNext()) {
                listIterator.next().clientReconnect();
            }
            this.mClientList.clear();
        }
    }

    public void register(ResolveClientBean resolveClientBean) {
        if (resolveClientBean == null) {
            return;
        }
        synchronized (LOCK_INST) {
            if (!this.mClientList.contains(resolveClientBean)) {
                this.mClientList.add(resolveClientBean);
            }
        }
    }

    public void unRegister(ResolveClientBean resolveClientBean) {
        if (resolveClientBean == null) {
            return;
        }
        synchronized (LOCK_INST) {
            if (this.mClientList.contains(resolveClientBean)) {
                ListIterator<ResolveClientBean> listIterator = this.mClientList.listIterator();
                while (true) {
                    if (listIterator.hasNext()) {
                        if (resolveClientBean.equals(listIterator.next())) {
                            listIterator.remove();
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
        }
    }

    public void unRegisterAll() {
        synchronized (LOCK_INST) {
            this.mClientList.clear();
        }
    }
}
