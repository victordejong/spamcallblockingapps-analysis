.class public interface abstract Lcom/telguarder/features/numberLookup/PhoneEventLogManager$CallLogUpdateCallBack;
.super Ljava/lang/Object;
.source "PhoneEventLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/numberLookup/PhoneEventLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CallLogUpdateCallBack"
.end annotation


# virtual methods
.method public abstract onUpdateFinished(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/telguarder/features/numberLookup/PhoneEvent;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract onUpdateNotNeeded()V
.end method
