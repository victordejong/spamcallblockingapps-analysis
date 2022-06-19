.class public Ld2/f1$h;
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
    iput-object p1, p0, Ld2/f1$h;->a:Ld2/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/f1$h;->a:Ld2/f1;

    .line 2
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "signals"

    .line 3
    invoke-virtual {p1, v1}, Ld2/f4;->l(Ljava/lang/String;)Ld2/f4;

    move-result-object p1

    .line 4
    iput-object p1, v0, Ld2/f1;->P:Ld2/f4;

    return-void
.end method
