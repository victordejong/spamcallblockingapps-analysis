package com.huawei.multimedia.audioengine;

import android.os.IInterface;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/huawei/multimedia/audioengine/IHwAudioKaraokeFeature.class */
public interface IHwAudioKaraokeFeature extends IInterface {
    int enableKaraokeFeature(boolean z) throws RemoteException;

    int getKaraokeLatency() throws RemoteException;

    void init(String str) throws RemoteException;

    boolean isKaraokeFeatureSupport() throws RemoteException;

    int setParameter(String str, int i) throws RemoteException;
}
