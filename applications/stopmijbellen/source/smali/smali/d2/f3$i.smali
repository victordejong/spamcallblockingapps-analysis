.class public Ld2/f3$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/f3;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/f3;


# direct methods
.method public constructor <init>(Ld2/f3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/f3$i;->a:Ld2/f3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/f3$i;->a:Ld2/f3;

    invoke-virtual {v0, p1}, Ld2/f3;->c(Ld2/t0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld2/f3$i;->a:Ld2/f3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    .line 4
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "text"

    invoke-static {v1, v2, v0}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5
    invoke-virtual {p1, v1}, Ld2/t0;->a(Ld2/f4;)Ld2/t0;

    move-result-object p1

    invoke-virtual {p1}, Ld2/t0;->b()V

    :cond_0
    return-void
.end method
