package com.bumptech.glide.manager;

import android.support.annotation.NonNull;
import com.bumptech.glide.RequestManager;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/RequestManagerTreeNode.class */
public interface RequestManagerTreeNode {
    @NonNull
    Set<RequestManager> getDescendants();
}
