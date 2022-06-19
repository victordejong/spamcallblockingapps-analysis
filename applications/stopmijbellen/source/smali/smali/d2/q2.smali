.class public Ld2/q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# instance fields
.field public final synthetic a:Ld2/b3;


# direct methods
.method public constructor <init>(Ld2/b3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/q2;->a:Ld2/b3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/q2;->a:Ld2/b3;

    invoke-virtual {v0, p1}, Ld2/b3;->b(Ld2/t0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ld2/q2;->a:Ld2/b3;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v1, "x"

    .line 4
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ld2/b3;->i:I

    const-string v1, "y"

    .line 5
    invoke-static {p1, v1}, Ld2/e4;->r(Ld2/f4;Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Ld2/b3;->j:I

    .line 6
    iget p1, v0, Ld2/b3;->i:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ld2/b3;->a(ZI)I

    move-result p1

    .line 7
    iget v1, v0, Ld2/b3;->j:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ld2/b3;->a(ZI)I

    move-result v1

    or-int/2addr p1, v1

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    :cond_0
    return-void
.end method
