.class public Lv9/e;
.super Lq9/b;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lv9/f;


# direct methods
.method public varargs constructor <init>(Lv9/f;Ljava/lang/String;[Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv9/e;->d:Lv9/f;

    iput p4, p0, Lv9/e;->b:I

    iput p5, p0, Lv9/e;->c:I

    invoke-direct {p0, p2, p3}, Lq9/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lv9/e;->d:Lv9/f;

    iget v1, p0, Lv9/e;->b:I

    iget v2, p0, Lv9/e;->c:I

    .line 2
    iget-object v0, v0, Lv9/f;->r:Lv9/p;

    invoke-virtual {v0, v1, v2}, Lv9/p;->s(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object v0, p0, Lv9/e;->d:Lv9/f;

    invoke-static {v0}, Lv9/f;->d(Lv9/f;)V

    :goto_0
    return-void
.end method
