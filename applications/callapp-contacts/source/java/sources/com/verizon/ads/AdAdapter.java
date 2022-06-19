package com.verizon.ads;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/AdAdapter.class */
public interface AdAdapter {
    AdContent getAdContent();

    ErrorInfo prepare(AdSession adSession, AdContent adContent);
}
