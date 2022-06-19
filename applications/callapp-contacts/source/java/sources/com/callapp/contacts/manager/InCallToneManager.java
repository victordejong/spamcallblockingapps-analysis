package com.callapp.contacts.manager;

import android.media.ToneGenerator;
import android.os.Build;
import android.telecom.Call;
import com.callapp.contacts.inCallService.TelecomAdapter;
import com.callapp.contacts.util.CLog;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/InCallToneManager.class */
public class InCallToneManager {

    /* renamed from: a */
    public ToneGenerator f25699a;

    /* renamed from: b */
    public final Object f25700b = new Object();

    /* renamed from: c */
    private final TelecomAdapter f25701c;

    public InCallToneManager() {
        try {
            this.f25699a = new ToneGenerator(8, 80);
        } catch (RuntimeException e) {
            CLog.m27596b(InCallToneManager.class, e);
        }
        this.f25701c = 23 <= Build.VERSION.SDK_INT ? TelecomAdapter.getInstance() : null;
    }

    /* renamed from: a */
    public final void m28660a(int i) {
        ToneGenerator toneGenerator = this.f25699a;
        if (toneGenerator != null) {
            toneGenerator.startTone(i, DrawableConstants.CtaButton.WIDTH_DIPS);
        }
    }

    /* renamed from: a */
    public final void m28659a(Call call) {
        TelecomAdapter telecomAdapter = this.f25701c;
        if (telecomAdapter != null) {
            telecomAdapter.m28959e(call);
        }
    }

    /* renamed from: a */
    public final void m28658a(Call call, char c) {
        TelecomAdapter telecomAdapter = this.f25701c;
        if (telecomAdapter != null) {
            telecomAdapter.m28963a(call, c);
        }
    }
}
