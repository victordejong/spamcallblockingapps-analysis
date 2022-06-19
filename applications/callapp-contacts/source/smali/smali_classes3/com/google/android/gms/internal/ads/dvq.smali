.class final Lcom/google/android/gms/internal/ads/dvq;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/dvo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dvo;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvq;->a:Lcom/google/android/gms/internal/ads/dvo;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dvq;->a:Lcom/google/android/gms/internal/ads/dvo;

    .line 1118
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1172
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1167
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhe;

    .line 1168
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dvo;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dvk;

    .line 1169
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/dvk;->a(Lcom/google/android/gms/internal/ads/zzhe;)V

    goto :goto_0

    :cond_0
    return-void

    .line 1161
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/dvz;

    .line 1162
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dvo;->l:Lcom/google/android/gms/internal/ads/dvz;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/dvz;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1163
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/dvo;->l:Lcom/google/android/gms/internal/ads/dvz;

    .line 1164
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dvo;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void

    .line 1152
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/dvt;

    .line 1153
    iget v1, v0, Lcom/google/android/gms/internal/ads/dvo;->e:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/dvt;->d:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dvo;->e:I

    .line 1154
    iget v1, v0, Lcom/google/android/gms/internal/ads/dvo;->f:I

    if-nez v1, :cond_5

    .line 1155
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dvt;->a:Lcom/google/android/gms/internal/ads/dwe;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/dvo;->h:Lcom/google/android/gms/internal/ads/dwe;

    .line 1156
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dvt;->b:Ljava/lang/Object;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/dvo;->i:Ljava/lang/Object;

    .line 1157
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/dvt;->c:Lcom/google/android/gms/internal/ads/dvr;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/dvo;->m:Lcom/google/android/gms/internal/ads/dvr;

    .line 1158
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dvo;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    return-void

    .line 1147
    :pswitch_3
    iget v1, v0, Lcom/google/android/gms/internal/ads/dvo;->e:I

    if-nez v1, :cond_5

    .line 1148
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/dvr;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/dvo;->m:Lcom/google/android/gms/internal/ads/dvr;

    .line 1149
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dvo;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_3

    :cond_3
    return-void

    .line 1141
    :pswitch_4
    iget v1, v0, Lcom/google/android/gms/internal/ads/dvo;->e:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dvo;->e:I

    if-nez v1, :cond_5

    .line 1142
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/dvr;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/dvo;->m:Lcom/google/android/gms/internal/ads/dvr;

    .line 1143
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_5

    .line 1144
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dvo;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_4

    :cond_4
    return-void

    .line 1131
    :pswitch_5
    iget v1, v0, Lcom/google/android/gms/internal/ads/dvo;->f:I

    if-nez v1, :cond_5

    .line 1132
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/ebx;

    .line 1133
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/dvo;->c:Z

    .line 1134
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/ebx;->a:Lcom/google/android/gms/internal/ads/ebi;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/dvo;->j:Lcom/google/android/gms/internal/ads/ebi;

    .line 1135
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/ebx;->b:Lcom/google/android/gms/internal/ads/ebw;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/dvo;->k:Lcom/google/android/gms/internal/ads/ebw;

    .line 1136
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dvo;->a:Lcom/google/android/gms/internal/ads/ebv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ebx;->c:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/ebv;->a(Ljava/lang/Object;)V

    .line 1137
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dvo;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_5

    :cond_5
    return-void

    .line 1126
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/dvo;->g:Z

    .line 1127
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dvo;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_7

    :cond_7
    return-void

    .line 1121
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v0, Lcom/google/android/gms/internal/ads/dvo;->d:I

    .line 1122
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/dvo;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dvk;

    .line 1123
    iget v2, v0, Lcom/google/android/gms/internal/ads/dvo;->d:I

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/dvk;->b(I)V

    goto :goto_8

    :cond_8
    return-void

    .line 1119
    :pswitch_8
    iget p1, v0, Lcom/google/android/gms/internal/ads/dvo;->f:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/google/android/gms/internal/ads/dvo;->f:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
