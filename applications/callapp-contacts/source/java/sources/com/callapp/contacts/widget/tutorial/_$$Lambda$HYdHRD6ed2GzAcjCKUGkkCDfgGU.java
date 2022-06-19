package com.callapp.contacts.widget.tutorial;

import com.callapp.contacts.util.Predicate;
import com.callapp.contacts.util.callappRomHelper.romHelper.base.detector.MIUIDetector;
import com.callapp.contacts.widget.tutorial.-$;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/tutorial/_$$Lambda$HYdHRD6ed2GzAcjCKUGkkCDfgGU.class */
public final /* synthetic */ class _$$Lambda$HYdHRD6ed2GzAcjCKUGkkCDfgGU implements Predicate {
    public static final /* synthetic */ -$.Lambda.HYdHRD6ed2GzAcjCKUGkkCDfgGU INSTANCE = new _$$Lambda$HYdHRD6ed2GzAcjCKUGkkCDfgGU();

    private /* synthetic */ _$$Lambda$HYdHRD6ed2GzAcjCKUGkkCDfgGU() {
    }

    @Override // com.callapp.contacts.util.Predicate
    public final boolean accept() {
        return MIUIDetector.isMIUI();
    }
}
