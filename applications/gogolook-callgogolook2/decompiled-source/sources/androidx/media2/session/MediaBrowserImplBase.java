package androidx.media2.session;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.common.MediaParcelUtils;
import androidx.media2.session.MediaBrowser;
import androidx.media2.session.MediaLibraryService;
import androidx.media2.session.SequencedFutureManager;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaBrowserImplBase.class */
public class MediaBrowserImplBase extends MediaControllerImplBase implements MediaBrowser.MediaBrowserImpl {
    public static final LibraryResult RESULT_WHEN_CLOSED = new LibraryResult(1);

    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:androidx/media2/session/MediaBrowserImplBase$RemoteLibrarySessionTask.class */
    public interface RemoteLibrarySessionTask {
        void run(IMediaSession iMediaSession, int i) throws RemoteException;
    }

    public MediaBrowserImplBase(Context context, MediaController mediaController, SessionToken sessionToken, @Nullable Bundle bundle) {
        super(context, mediaController, sessionToken, bundle);
    }

    private AbstractFutureC9382a<LibraryResult> dispatchRemoteLibrarySessionTask(int i, RemoteLibrarySessionTask remoteLibrarySessionTask) {
        IMediaSession sessionInterfaceIfAble = getSessionInterfaceIfAble(i);
        if (sessionInterfaceIfAble == null) {
            return LibraryResult.createFutureWithResult(-4);
        }
        SequencedFutureManager.SequencedFuture createSequencedFuture = this.mSequencedFutureManager.createSequencedFuture(RESULT_WHEN_CLOSED);
        try {
            remoteLibrarySessionTask.run(sessionInterfaceIfAble, createSequencedFuture.getSequenceNumber());
        } catch (RemoteException e) {
            createSequencedFuture.set(new LibraryResult(-100));
        }
        return createSequencedFuture;
    }

    @Override // androidx.media2.session.MediaBrowser.MediaBrowserImpl
    public AbstractFutureC9382a<LibraryResult> getChildren(final String str, final int i, final int i2, final MediaLibraryService.LibraryParams libraryParams) {
        return dispatchRemoteLibrarySessionTask(SessionCommand.COMMAND_CODE_LIBRARY_GET_CHILDREN, new RemoteLibrarySessionTask() { // from class: androidx.media2.session.MediaBrowserImplBase.4
            @Override // androidx.media2.session.MediaBrowserImplBase.RemoteLibrarySessionTask
            public void run(IMediaSession iMediaSession, int i3) throws RemoteException {
                iMediaSession.getChildren(MediaBrowserImplBase.this.mControllerStub, i3, str, i, i2, MediaParcelUtils.toParcelable(libraryParams));
            }
        });
    }

    @Override // androidx.media2.session.MediaBrowser.MediaBrowserImpl
    public AbstractFutureC9382a<LibraryResult> getItem(final String str) {
        return dispatchRemoteLibrarySessionTask(SessionCommand.COMMAND_CODE_LIBRARY_GET_ITEM, new RemoteLibrarySessionTask() { // from class: androidx.media2.session.MediaBrowserImplBase.5
            @Override // androidx.media2.session.MediaBrowserImplBase.RemoteLibrarySessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.getItem(MediaBrowserImplBase.this.mControllerStub, i, str);
            }
        });
    }

    @Override // androidx.media2.session.MediaBrowser.MediaBrowserImpl
    public AbstractFutureC9382a<LibraryResult> getLibraryRoot(final MediaLibraryService.LibraryParams libraryParams) {
        return dispatchRemoteLibrarySessionTask(50000, new RemoteLibrarySessionTask() { // from class: androidx.media2.session.MediaBrowserImplBase.1
            @Override // androidx.media2.session.MediaBrowserImplBase.RemoteLibrarySessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.getLibraryRoot(MediaBrowserImplBase.this.mControllerStub, i, MediaParcelUtils.toParcelable(libraryParams));
            }
        });
    }

    @NonNull
    public MediaBrowser getMediaBrowser() {
        return (MediaBrowser) this.mInstance;
    }

    @Override // androidx.media2.session.MediaBrowser.MediaBrowserImpl
    public AbstractFutureC9382a<LibraryResult> getSearchResult(final String str, final int i, final int i2, final MediaLibraryService.LibraryParams libraryParams) {
        return dispatchRemoteLibrarySessionTask(SessionCommand.COMMAND_CODE_LIBRARY_GET_SEARCH_RESULT, new RemoteLibrarySessionTask() { // from class: androidx.media2.session.MediaBrowserImplBase.7
            @Override // androidx.media2.session.MediaBrowserImplBase.RemoteLibrarySessionTask
            public void run(IMediaSession iMediaSession, int i3) throws RemoteException {
                iMediaSession.getSearchResult(MediaBrowserImplBase.this.mControllerStub, i3, str, i, i2, MediaParcelUtils.toParcelable(libraryParams));
            }
        });
    }

    public void notifyChildrenChanged(final String str, final int i, final MediaLibraryService.LibraryParams libraryParams) {
        getMediaBrowser().notifyBrowserCallback(new MediaBrowser.BrowserCallbackRunnable() { // from class: androidx.media2.session.MediaBrowserImplBase.9
            @Override // androidx.media2.session.MediaBrowser.BrowserCallbackRunnable
            public void run(@NonNull MediaBrowser.BrowserCallback browserCallback) {
                browserCallback.onChildrenChanged(MediaBrowserImplBase.this.getMediaBrowser(), str, i, libraryParams);
            }
        });
    }

    public void notifySearchResultChanged(final String str, final int i, final MediaLibraryService.LibraryParams libraryParams) {
        getMediaBrowser().notifyBrowserCallback(new MediaBrowser.BrowserCallbackRunnable() { // from class: androidx.media2.session.MediaBrowserImplBase.8
            @Override // androidx.media2.session.MediaBrowser.BrowserCallbackRunnable
            public void run(@NonNull MediaBrowser.BrowserCallback browserCallback) {
                browserCallback.onSearchResultChanged(MediaBrowserImplBase.this.getMediaBrowser(), str, i, libraryParams);
            }
        });
    }

    @Override // androidx.media2.session.MediaBrowser.MediaBrowserImpl
    public AbstractFutureC9382a<LibraryResult> search(final String str, final MediaLibraryService.LibraryParams libraryParams) {
        return dispatchRemoteLibrarySessionTask(SessionCommand.COMMAND_CODE_LIBRARY_SEARCH, new RemoteLibrarySessionTask() { // from class: androidx.media2.session.MediaBrowserImplBase.6
            @Override // androidx.media2.session.MediaBrowserImplBase.RemoteLibrarySessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.search(MediaBrowserImplBase.this.mControllerStub, i, str, MediaParcelUtils.toParcelable(libraryParams));
            }
        });
    }

    @Override // androidx.media2.session.MediaBrowser.MediaBrowserImpl
    public AbstractFutureC9382a<LibraryResult> subscribe(final String str, final MediaLibraryService.LibraryParams libraryParams) {
        return dispatchRemoteLibrarySessionTask(SessionCommand.COMMAND_CODE_LIBRARY_SUBSCRIBE, new RemoteLibrarySessionTask() { // from class: androidx.media2.session.MediaBrowserImplBase.2
            @Override // androidx.media2.session.MediaBrowserImplBase.RemoteLibrarySessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.subscribe(MediaBrowserImplBase.this.mControllerStub, i, str, MediaParcelUtils.toParcelable(libraryParams));
            }
        });
    }

    @Override // androidx.media2.session.MediaBrowser.MediaBrowserImpl
    public AbstractFutureC9382a<LibraryResult> unsubscribe(final String str) {
        return dispatchRemoteLibrarySessionTask(SessionCommand.COMMAND_CODE_LIBRARY_UNSUBSCRIBE, new RemoteLibrarySessionTask() { // from class: androidx.media2.session.MediaBrowserImplBase.3
            @Override // androidx.media2.session.MediaBrowserImplBase.RemoteLibrarySessionTask
            public void run(IMediaSession iMediaSession, int i) throws RemoteException {
                iMediaSession.unsubscribe(MediaBrowserImplBase.this.mControllerStub, i, str);
            }
        });
    }
}
