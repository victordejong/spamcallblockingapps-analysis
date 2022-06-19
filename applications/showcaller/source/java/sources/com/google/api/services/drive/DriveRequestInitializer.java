package com.google.api.services.drive;

import com.google.api.client.googleapis.p284d.p285e.AbstractC8605b;
import com.google.api.client.googleapis.p284d.p285e.C8606c;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/DriveRequestInitializer.class */
public class DriveRequestInitializer extends C8606c {
    public DriveRequestInitializer() {
    }

    public DriveRequestInitializer(String str) {
        super(str);
    }

    public DriveRequestInitializer(String str, String str2) {
        super(str, str2);
    }

    protected void initializeDriveRequest(DriveRequest<?> driveRequest) {
    }

    @Override // com.google.api.client.googleapis.p284d.p285e.C8606c
    public final void initializeJsonRequest(AbstractC8605b<?> abstractC8605b) {
        super.initializeJsonRequest(abstractC8605b);
        initializeDriveRequest((DriveRequest) abstractC8605b);
    }
}
