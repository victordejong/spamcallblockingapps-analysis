.class public Ld2/f3$g;
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
    iput-object p1, p0, Ld2/f3$g;->a:Ld2/f3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld2/f3$g;->a:Ld2/f3;

    invoke-virtual {v0, p1}, Ld2/f3;->c(Ld2/t0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld2/f3$g;->a:Ld2/f3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "font_size"

    .line 4
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Ld2/f3;->h:I

    int-to-float p1, p1

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    :cond_0
    return-void
.end method
