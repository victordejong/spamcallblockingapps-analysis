.class public abstract Lxc$r;
.super Lyc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lyc<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lyc;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lxc$f;)V
    .locals 0

    invoke-direct {p0, p1}, Lxc$r;-><init>(Ljava/lang/String;)V

    return-void
.end method
