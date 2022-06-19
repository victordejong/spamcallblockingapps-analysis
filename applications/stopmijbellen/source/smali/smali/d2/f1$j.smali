.class public Ld2/f1$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/f1;->g(Ld2/l;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ld2/f1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 3

    .line 1
    invoke-static {}, Ld2/r1;->c()Ld2/r1;

    move-result-object p1

    .line 2
    new-instance v0, Li4/d;

    invoke-direct {v0, p1}, Li4/d;-><init>(Ld2/r1;)V

    const-wide/16 v1, -0x1

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Ld2/r1;->b(Ld2/a;J)V

    return-void
.end method
