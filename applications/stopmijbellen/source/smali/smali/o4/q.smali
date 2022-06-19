.class public final Lo4/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/s;


# instance fields
.field public a:Lo4/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lo4/q;->a:Lo4/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lo4/s;->zza()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
