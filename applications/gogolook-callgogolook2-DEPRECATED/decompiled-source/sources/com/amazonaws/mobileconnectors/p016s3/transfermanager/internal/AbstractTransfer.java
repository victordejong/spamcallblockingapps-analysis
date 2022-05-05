package com.amazonaws.mobileconnectors.p016s3.transfermanager.internal;

import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.Transfer;
import com.amazonaws.mobileconnectors.p016s3.transfermanager.TransferProgress;
import java.util.Collection;
import java.util.LinkedList;
/* renamed from: com.amazonaws.mobileconnectors.s3.transfermanager.internal.AbstractTransfer */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transfermanager/internal/AbstractTransfer.class */
public abstract class AbstractTransfer implements Transfer {
    public final Collection<TransferStateChangeListener> stateChangeListeners = new LinkedList();

    public AbstractTransfer(String str, TransferProgress transferProgress, ProgressListenerChain progressListenerChain, TransferStateChangeListener transferStateChangeListener) {
        Transfer.TransferState transferState = Transfer.TransferState.Waiting;
        addStateChangeListener(transferStateChangeListener);
    }

    public void addStateChangeListener(TransferStateChangeListener transferStateChangeListener) {
        synchronized (this) {
            if (transferStateChangeListener != null) {
                this.stateChangeListeners.add(transferStateChangeListener);
            }
        }
    }

    public void setMonitor(TransferMonitor transferMonitor) {
    }

    public void setState(Transfer.TransferState transferState) {
        synchronized (this) {
        }
        for (TransferStateChangeListener transferStateChangeListener : this.stateChangeListeners) {
            transferStateChangeListener.transferStateChanged(this, transferState);
        }
    }
}
