.class public Ld2/h0$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/h0;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/h0;


# direct methods
.method public constructor <init>(Ld2/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/h0$i;->a:Ld2/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/h0$i;->a:Ld2/h0;

    .line 2
    iget-object v1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "module"

    .line 3
    invoke-static {v1, v2}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    .line 4
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "message"

    .line 5
    invoke-virtual {p1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, p1, v2}, Ld2/h0;->e(IILjava/lang/String;Z)V

    return-void
.end method
