package com.liulishuo.filedownloader.event;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent.class */
public class DownloadServiceConnectChangedEvent extends AbstractC9364b {

    /* renamed from: c */
    private final ConnectStatus f40052c;

    /* renamed from: d */
    private final Class<?> f40053d;

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus.class */
    public enum ConnectStatus {
        connected,
        disconnected,
        lost
    }

    public DownloadServiceConnectChangedEvent(ConnectStatus connectStatus, Class<?> cls) {
        super("event.service.connect.changed");
        this.f40052c = connectStatus;
        this.f40053d = cls;
    }

    /* renamed from: b */
    public ConnectStatus m911b() {
        return this.f40052c;
    }
}
