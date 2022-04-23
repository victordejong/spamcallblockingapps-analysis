package com.callapp.contacts.manager;

import android.media.ToneGenerator;
import android.os.Build;
import android.telecom.Call;
import com.callapp.contacts.inCallService.TelecomAdapter;
import com.callapp.contacts.util.CLog;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/InCallToneManager.class */
public class InCallToneManager {

    /* renamed from: a  reason: collision with root package name */
    public ToneGenerator f14871a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f14872b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final TelecomAdapter f14873c;

    public InCallToneManager() {
        try {
            this.f14871a = new ToneGenerator(8, 80);
        } catch (RuntimeException e) {
            CLog.b(InCallToneManager.class, e);
        }
        this.f14873c = 23 <= Build.VERSION.SDK_INT ? TelecomAdapter.getInstance() : null;
    }

    public final void a(int i) {
        ToneGenerator toneGenerator = this.f14871a;
        if (toneGenerator != null) {
            toneGenerator.startTone(i, DrawableConstants.CtaButton.WIDTH_DIPS);
        }
    }

    public final void a(Call call) {
        TelecomAdapter telecomAdapter = this.f14873c;
        if (telecomAdapter != null) {
            telecomAdapter.e(call);
        }
    }

    public final void a(Call call, char c2) {
        TelecomAdapter telecomAdapter = this.f14873c;
        if (telecomAdapter != null) {
            telecomAdapter.a(call, c2);
        }
    }
}
