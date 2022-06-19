.class public Lv9/k;
.super Lq9/b;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lv9/o;

.field public final synthetic c:Lv9/f$e;


# direct methods
.method public varargs constructor <init>(Lv9/f$e;Ljava/lang/String;[Ljava/lang/Object;Lv9/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv9/k;->c:Lv9/f$e;

    iput-object p4, p0, Lv9/k;->b:Lv9/o;

    invoke-direct {p0, p2, p3}, Lq9/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lv9/k;->c:Lv9/f$e;

    iget-object v0, v0, Lv9/f$e;->c:Lv9/f;

    iget-object v0, v0, Lv9/f;->b:Lv9/f$c;

    iget-object v1, p0, Lv9/k;->b:Lv9/o;

    invoke-virtual {v0, v1}, Lv9/f$c;->b(Lv9/o;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lx9/f;->a:Lx9/f;

    const/4 v2, 0x4

    const-string v3, "Http2Connection.Listener failure for "

    .line 3
    invoke-static {v3}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lv9/k;->c:Lv9/f$e;

    iget-object v4, v4, Lv9/f$e;->c:Lv9/f;

    iget-object v4, v4, Lv9/f;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lx9/f;->l(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :try_start_1
    iget-object v0, p0, Lv9/k;->b:Lv9/o;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lv9/o;->c(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
