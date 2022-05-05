package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.Key;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/EngineJobListener.class */
interface EngineJobListener {
    void onEngineJobCancelled(EngineJob<?> engineJob, Key key);

    void onEngineJobComplete(EngineJob<?> engineJob, Key key, EngineResource<?> engineResource);
}
