package com.huawei.multimedia.audioengine;

import android.os.IInterface;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/huawei/multimedia/audioengine/IHwAudioEngine.class */
public interface IHwAudioEngine extends IInterface {
    List getSupportedFeatures() throws RemoteException;

    void init(String str, String str2) throws RemoteException;

    boolean isFeatureSupported(int i) throws RemoteException;
}
