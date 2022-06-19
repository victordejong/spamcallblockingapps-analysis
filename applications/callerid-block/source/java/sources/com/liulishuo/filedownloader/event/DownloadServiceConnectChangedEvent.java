package com.liulishuo.filedownloader.event;
/* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent.class */
public class DownloadServiceConnectChangedEvent extends AbstractC2759b {

    /* renamed from: c */
    private final ConnectStatus f11456c;

    /* loaded from: classes2-dex2jar.jar:com/liulishuo/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus.class */
    public enum ConnectStatus {
        connected,
        disconnected,
        lost
    }

    public DownloadServiceConnectChangedEvent(ConnectStatus connectStatus, Class<?> cls) {
        super("event.service.connect.changed");
        this.f11456c = connectStatus;
    }

    /* renamed from: b */
    public ConnectStatus m1865b() {
        return this.f11456c;
    }
}
