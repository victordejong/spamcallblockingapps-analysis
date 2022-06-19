package com.freshchat.consumer.sdk.beans.fragment;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/beans/fragment/CollectionFragment.class */
public class CollectionFragment extends MessageFragment {
    private List<MessageFragment> fragments;

    public CollectionFragment() {
        super(FragmentType.COLLECTION.asInt());
    }

    public List<MessageFragment> getFragments() {
        return this.fragments;
    }
}
