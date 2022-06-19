.class public Ld2/f1$u;
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


# instance fields
.field public final synthetic a:Ld2/f1;


# direct methods
.method public constructor <init>(Ld2/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/f1$u;->a:Ld2/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/f1$u;->a:Ld2/f1;

    .line 2
    iget-object v1, v0, Ld2/f1;->p:Ld2/r;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ld2/m1;

    invoke-direct {v1, v0, p1}, Ld2/m1;-><init>(Ld2/f1;Ld2/t0;)V

    invoke-static {v1}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
