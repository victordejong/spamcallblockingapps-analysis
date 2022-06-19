.class public Lv9/m;
.super Lq9/b;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lj4/s0;

.field public final synthetic c:Lv9/f$e;


# direct methods
.method public varargs constructor <init>(Lv9/f$e;Ljava/lang/String;[Ljava/lang/Object;Lj4/s0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv9/m;->c:Lv9/f$e;

    iput-object p4, p0, Lv9/m;->b:Lj4/s0;

    invoke-direct {p0, p2, p3}, Lq9/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lv9/m;->c:Lv9/f$e;

    iget-object v0, v0, Lv9/f$e;->c:Lv9/f;

    iget-object v0, v0, Lv9/f;->r:Lv9/p;

    iget-object v1, p0, Lv9/m;->b:Lj4/s0;

    invoke-virtual {v0, v1}, Lv9/p;->d(Lj4/s0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lv9/m;->c:Lv9/f$e;

    iget-object v0, v0, Lv9/f$e;->c:Lv9/f;

    invoke-static {v0}, Lv9/f;->d(Lv9/f;)V

    :goto_0
    return-void
.end method
