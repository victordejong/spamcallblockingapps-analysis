.class public Lm1/f$b;
.super Lm1/f$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm1/f$f;-><init>()V

    return-void
.end method

.method public constructor <init>(Lm1/f$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lm1/f$f;-><init>(Lm1/f$f;)V

    return-void
.end method
