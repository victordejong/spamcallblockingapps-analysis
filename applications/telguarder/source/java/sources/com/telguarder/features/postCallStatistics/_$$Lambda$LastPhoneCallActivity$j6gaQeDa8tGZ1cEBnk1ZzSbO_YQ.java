package com.telguarder.features.postCallStatistics;

import com.telguarder.features.postCallStatistics.-$;
/* loaded from: classes2-dex2jar.jar:com/telguarder/features/postCallStatistics/_$$Lambda$LastPhoneCallActivity$j6gaQeDa8tGZ1cEBnk1ZzSbO_YQ.class */
public final /* synthetic */ class _$$Lambda$LastPhoneCallActivity$j6gaQeDa8tGZ1cEBnk1ZzSbO_YQ implements Runnable {
    public static final /* synthetic */ -$.Lambda.LastPhoneCallActivity.j6gaQeDa8tGZ1cEBnk1ZzSbO-YQ INSTANCE = new _$$Lambda$LastPhoneCallActivity$j6gaQeDa8tGZ1cEBnk1ZzSbO_YQ();

    private /* synthetic */ _$$Lambda$LastPhoneCallActivity$j6gaQeDa8tGZ1cEBnk1ZzSbO_YQ() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        CSViewAdapter.getInstance().notifyDataSetChanged();
    }
}
