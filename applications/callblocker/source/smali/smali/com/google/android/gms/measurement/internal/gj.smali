.class final synthetic Lcom/google/android/gms/measurement/internal/gj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/gk;

.field private final b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gk;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gj;->a:Lcom/google/android/gms/measurement/internal/gk;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/gj;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/gj;->a:Lcom/google/android/gms/measurement/internal/gk;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/gj;->b:Landroid/os/Bundle;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/kd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->aN:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 4
    :cond_1
    if-nez v2, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->y:Lcom/google/android/gms/measurement/internal/eq;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/eq;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->y:Lcom/google/android/gms/measurement/internal/eq;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/eq;->a()Landroid/os/Bundle;

    move-result-object v3

    .line 8
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 10
    if-eqz v5, :cond_5

    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_5

    instance-of v6, v5, Ljava/lang/Long;

    if-nez v6, :cond_5

    instance-of v6, v5, Ljava/lang/Double;

    if-nez v6, :cond_5

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v6

    const/16 v7, 0x1b

    .line 13
    invoke-virtual {v6, v7, v9, v9, v10}, Lcom/google/android/gms/measurement/internal/jw;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 14
    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v6

    .line 15
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v6

    const-string/jumbo v7, "Invalid default event parameter type. Name, value"

    .line 16
    invoke-virtual {v6, v7, v0, v5}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 18
    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jw;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v5

    .line 20
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v5

    const-string/jumbo v6, "Invalid default event parameter name. Name"

    .line 21
    invoke-virtual {v5, v6, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 23
    :cond_6
    if-nez v5, :cond_7

    .line 24
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v6

    const-string/jumbo v7, "param"

    .line 26
    const/16 v8, 0x64

    .line 27
    invoke-virtual {v6, v7, v0, v8, v5}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v6

    invoke-virtual {v6, v3, v0, v5}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 30
    :cond_8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->a()I

    move-result v0

    .line 32
    invoke-static {v3, v0}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    const/16 v2, 0x1a

    .line 34
    invoke-virtual {v0, v2, v9, v9, v10}, Lcom/google/android/gms/measurement/internal/jw;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Too many default event parameters set. Discarding beyond event parameter limit"

    .line 37
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 38
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->y:Lcom/google/android/gms/measurement/internal/eq;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/eq;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
