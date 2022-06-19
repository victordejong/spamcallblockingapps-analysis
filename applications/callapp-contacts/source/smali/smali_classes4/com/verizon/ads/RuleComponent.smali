.class public interface abstract Lcom/verizon/ads/RuleComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/Component;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/ads/RuleComponent$RuleListener;
    }
.end annotation


# virtual methods
.method public abstract fire()V
.end method

.method public abstract getEventArgs()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEventId()Ljava/lang/String;
.end method

.method public abstract hasFired()Z
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method
