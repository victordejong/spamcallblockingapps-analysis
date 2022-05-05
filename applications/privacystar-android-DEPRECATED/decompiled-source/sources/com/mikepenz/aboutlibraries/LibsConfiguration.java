package com.mikepenz.aboutlibraries;

import android.support.p004v7.widget.RecyclerView;
import android.view.View;
import android.view.animation.LayoutAnimationController;
import com.mikepenz.aboutlibraries.Libs;
import com.mikepenz.aboutlibraries.entity.Library;
import com.mikepenz.aboutlibraries.p007ui.item.HeaderItem;
import com.mikepenz.aboutlibraries.p007ui.item.LibraryItem;
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/LibsConfiguration.class */
public class LibsConfiguration {
    private static LibsConfiguration SINGLETON;
    private RecyclerView.ItemAnimator mItemAnimator;
    private LibTaskCallback mLibTaskCallback;
    private LibsListener mListener = null;
    private LibsUIListener mUiListener = null;
    private LibsRecyclerViewListener mRecyclerViewListener = null;
    private LayoutAnimationController mLayoutAnimationController = null;

    /* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/LibsConfiguration$LibsListener.class */
    public interface LibsListener {
        boolean onExtraClicked(View view, Libs.SpecialButton specialButton);

        void onIconClicked(View view);

        boolean onIconLongClicked(View view);

        boolean onLibraryAuthorClicked(View view, Library library);

        boolean onLibraryAuthorLongClicked(View view, Library library);

        boolean onLibraryBottomClicked(View view, Library library);

        boolean onLibraryBottomLongClicked(View view, Library library);

        boolean onLibraryContentClicked(View view, Library library);

        boolean onLibraryContentLongClicked(View view, Library library);
    }

    /* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/LibsConfiguration$LibsListenerImpl.class */
    public static abstract class LibsListenerImpl implements LibsListener {
        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public boolean onExtraClicked(View view, Libs.SpecialButton specialButton) {
            return false;
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public void onIconClicked(View view) {
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public boolean onIconLongClicked(View view) {
            return true;
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public boolean onLibraryAuthorClicked(View view, Library library) {
            return false;
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public boolean onLibraryAuthorLongClicked(View view, Library library) {
            return true;
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public boolean onLibraryBottomClicked(View view, Library library) {
            return false;
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public boolean onLibraryBottomLongClicked(View view, Library library) {
            return true;
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public boolean onLibraryContentClicked(View view, Library library) {
            return false;
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsListener
        public boolean onLibraryContentLongClicked(View view, Library library) {
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/LibsConfiguration$LibsRecyclerViewListener.class */
    public interface LibsRecyclerViewListener {
        void onBindViewHolder(HeaderItem.ViewHolder viewHolder);

        void onBindViewHolder(LibraryItem.ViewHolder viewHolder);
    }

    /* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/LibsConfiguration$LibsRecyclerViewListenerImpl.class */
    public static abstract class LibsRecyclerViewListenerImpl implements LibsRecyclerViewListener {
        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsRecyclerViewListener
        public void onBindViewHolder(HeaderItem.ViewHolder viewHolder) {
        }

        @Override // com.mikepenz.aboutlibraries.LibsConfiguration.LibsRecyclerViewListener
        public void onBindViewHolder(LibraryItem.ViewHolder viewHolder) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/LibsConfiguration$LibsUIListener.class */
    public interface LibsUIListener {
        View postOnCreateView(View view);

        View preOnCreateView(View view);
    }

    private LibsConfiguration() {
    }

    public static LibsConfiguration getInstance() {
        if (SINGLETON == null) {
            SINGLETON = new LibsConfiguration();
        }
        return SINGLETON;
    }

    public RecyclerView.ItemAnimator getItemAnimator() {
        return this.mItemAnimator;
    }

    public LayoutAnimationController getLayoutAnimationController() {
        return this.mLayoutAnimationController;
    }

    public LibTaskCallback getLibTaskCallback() {
        return this.mLibTaskCallback;
    }

    public LibsRecyclerViewListener getLibsRecyclerViewListener() {
        return this.mRecyclerViewListener;
    }

    public LibsListener getListener() {
        return this.mListener;
    }

    public LibsUIListener getUiListener() {
        return this.mUiListener;
    }

    public void removeLibsRecyclerViewListener() {
        this.mRecyclerViewListener = null;
    }

    public void removeListener() {
        this.mListener = null;
    }

    public void removeUiListener() {
        this.mUiListener = null;
    }

    public void reset() {
        SINGLETON = null;
    }

    public void setItemAnimator(RecyclerView.ItemAnimator itemAnimator) {
        this.mItemAnimator = itemAnimator;
    }

    public void setLayoutAnimationController(LayoutAnimationController layoutAnimationController) {
        this.mLayoutAnimationController = layoutAnimationController;
    }

    public void setLibTaskCallback(LibTaskCallback libTaskCallback) {
        this.mLibTaskCallback = libTaskCallback;
    }

    public void setLibsRecyclerViewListener(LibsRecyclerViewListener libsRecyclerViewListener) {
        this.mRecyclerViewListener = libsRecyclerViewListener;
    }

    public void setListener(LibsListener libsListener) {
        this.mListener = libsListener;
    }

    public void setUiListener(LibsUIListener libsUIListener) {
        this.mUiListener = libsUIListener;
    }
}
