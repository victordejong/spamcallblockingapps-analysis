package com.callapp.contacts.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.view.View;
import android.view.Window;
import androidx.appcompat.view.AbstractC0241b;
import androidx.appcompat.view.C0245e;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.contact.list.ContactsListActivity;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.framework.util.CollectionUtils;
import com.google.api.client.p379a.C15248r;
import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/AndroidUtils.class */
public class AndroidUtils {

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/AndroidUtils$FieldsChangedHandler.class */
    public static class FieldsChangedHandler<T> {

        /* renamed from: a */
        public final BitSet f27683a;

        /* renamed from: b */
        private final List<T> f27684b;

        public FieldsChangedHandler(List<T> list) {
            ArrayList arrayList = list instanceof Collection ? new ArrayList(list) : C15248r.m9208a(list.iterator());
            this.f27684b = arrayList;
            this.f27683a = new BitSet(arrayList.size());
        }

        @SafeVarargs
        public FieldsChangedHandler(T... tArr) {
            List<T> asList = Arrays.asList(tArr);
            this.f27684b = asList;
            this.f27683a = new BitSet(asList.size());
        }

        /* renamed from: a */
        public static <E extends Enum<E>> List<E> m27627a(Class<E> cls, Intent intent) {
            Bundle extras;
            ArrayList arrayList = new ArrayList();
            if (intent != null && (extras = intent.getExtras()) != null) {
                Set<String> keySet = extras.keySet();
                if (CollectionUtils.m26068b(keySet)) {
                    for (String str : keySet) {
                        try {
                            arrayList.add(Enum.valueOf(cls, str));
                        } catch (IllegalArgumentException e) {
                        }
                    }
                }
            }
            return arrayList;
        }

        /* renamed from: a */
        public final boolean m27628a(Intent intent) {
            boolean z = false;
            boolean z2 = false;
            if (isAnyFieldChanged()) {
                Iterator<T> it2 = this.f27684b.iterator();
                while (true) {
                    z = z2;
                    if (!it2.hasNext()) {
                        break;
                    }
                    T next = it2.next();
                    if (m27626a((FieldsChangedHandler<T>) next)) {
                        intent.putExtra(next.toString(), true);
                        z2 |= true;
                    }
                }
            }
            return z;
        }

        /* renamed from: a */
        public final boolean m27626a(T t) {
            int indexOf = this.f27684b.indexOf(t);
            return indexOf >= 0 && this.f27683a.get(indexOf);
        }

        public boolean isAnyFieldChanged() {
            return !this.f27683a.isEmpty();
        }

        public void setFieldChanged(T t) {
            int indexOf = this.f27684b.indexOf(t);
            if (indexOf >= 0) {
                this.f27683a.set(indexOf, true);
            }
        }
    }

    /* renamed from: a */
    public static String m27632a(Intent intent) {
        if (intent == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder("action: ");
        sb.append(intent.getAction());
        sb.append(" data: ");
        sb.append(intent.getDataString());
        sb.append(" extras: ");
        try {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                for (String str : extras.keySet()) {
                    sb.append(str);
                    sb.append("=");
                    sb.append(extras.get(str));
                    sb.append(StringUtils.SPACE);
                }
            }
        } catch (Exception e) {
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static void m27635a(Activity activity) {
        Window window;
        View decorView;
        if (!Prefs.f26382d.get().booleanValue() || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return;
        }
        m27630a(decorView, 1);
    }

    /* renamed from: a */
    public static void m27633a(Context context, String str) {
        new Task() { // from class: com.callapp.contacts.util.AndroidUtils.1
            @Override // com.callapp.contacts.manager.task.Task
            public final void doTask() {
                CallAppApplication.get().startActivity(new Intent(CallAppApplication.get(), ContactsListActivity.class).addFlags(268468224));
                Process.killProcess(Process.myPid());
            }
        }.schedule(2000);
        SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
        if (str != null) {
            simpleProgressDialog.setMessage(str);
        }
        simpleProgressDialog.setCancelable(false);
        PopupManager.get().m28209a(context, simpleProgressDialog);
    }

    /* renamed from: a */
    public static void m27631a(Looper looper) {
        Handler handler = new Handler(looper) { // from class: com.callapp.contacts.util.AndroidUtils.2
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                sendMessageDelayed(obtainMessage(), 1000L);
            }
        };
        handler.sendMessageDelayed(handler.obtainMessage(), 1000L);
    }

    /* renamed from: a */
    public static void m27630a(View view, int i) {
        if (!Prefs.f26382d.get().booleanValue() || view == null) {
            return;
        }
        try {
            view.performHapticFeedback(i);
        } catch (RuntimeException e) {
        }
    }

    /* renamed from: a */
    public static boolean m27634a(Context context) {
        try {
            return m27629a(context.getCacheDir());
        } catch (Exception e) {
            CLog.m27609a(AndroidUtils.class, e);
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m27629a(File file) {
        if (file == null || !file.isDirectory()) {
            if (file != null && file.isFile()) {
                return file.delete();
            }
            return false;
        }
        for (String str : file.list()) {
            if (!m27629a(new File(file, str))) {
                return false;
            }
        }
        return file.delete();
    }

    public static void setActionModeBackgroundColor(AbstractC0241b abstractC0241b) {
        try {
            int color = ThemeUtils.getColor(2131099786);
            Field declaredField = C0245e.class.getDeclaredField("a");
            declaredField.setAccessible(true);
            ((View) declaredField.get((C0245e) abstractC0241b)).setBackground(new ColorDrawable(color));
        } catch (Throwable th) {
        }
    }
}
