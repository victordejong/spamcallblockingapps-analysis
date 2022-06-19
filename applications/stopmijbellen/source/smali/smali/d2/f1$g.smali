.class public Ld2/f1$g;
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
    iput-object p1, p0, Ld2/f1$g;->a:Ld2/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld2/f1$g;->a:Ld2/f1;

    invoke-virtual {v0}, Ld2/f1;->p()Ld2/h0;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ld2/h0;->d:Ld2/d2;

    .line 3
    iget-object v1, p0, Ld2/f1$g;->a:Ld2/f1;

    invoke-virtual {v1}, Ld2/f1;->m()Ld2/b2;

    move-result-object v1

    .line 4
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    const-string v2, "version"

    .line 5
    invoke-virtual {p1, v2}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iput-object p1, v1, Ld2/b2;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7
    iget-object p1, p0, Ld2/f1$g;->a:Ld2/f1;

    invoke-virtual {p1}, Ld2/f1;->m()Ld2/b2;

    move-result-object p1

    .line 8
    iget-object p1, p1, Ld2/b2;->g:Ljava/lang/String;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, v0, Ld2/d2;->e:Ljava/util/HashMap;

    const-string v2, "controllerVersion"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
