.class final synthetic Lcom/google/android/gms/internal/ads/bdn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/bdo;

.field private final b:Lcom/google/android/gms/internal/ads/ben;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/bdo;Lcom/google/android/gms/internal/ads/ben;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bdn;->a:Lcom/google/android/gms/internal/ads/bdo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bdn;->b:Lcom/google/android/gms/internal/ads/ben;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bdn;->a:Lcom/google/android/gms/internal/ads/bdo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bdn;->b:Lcom/google/android/gms/internal/ads/ben;

    .line 1097
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bdo;->c:Lcom/google/android/gms/internal/ads/bcv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bcv;->e()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bdo;->c:Lcom/google/android/gms/internal/ads/bcv;

    .line 1098
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bcv;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v5, 0x0

    if-eqz v2, :cond_3

    const-string v2, "1098"

    const-string v6, "3011"

    .line 1101
    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x2

    if-ge v6, v7, :cond_3

    .line 1102
    aget-object v7, v2, v6

    .line 1103
    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/ben;->a_(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1104
    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_2

    .line 1105
    check-cast v7, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    move-object v7, v5

    :goto_3
    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    .line 1111
    :goto_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ben;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1112
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v6, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1113
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/bdo;->d:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/bcr;->d()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1114
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bdo;->d:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bcr;->d()Landroid/view/View;

    move-result-object v2

    .line 1115
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/bdo;->g:Lcom/google/android/gms/internal/ads/zzaei;

    if-nez v8, :cond_5

    goto :goto_5

    :cond_5
    if-nez v4, :cond_9

    .line 1118
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/bdo;->g:Lcom/google/android/gms/internal/ads/zzaei;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzaei;->zzbof:I

    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/bdo;->a(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1119
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 1121
    :cond_6
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/bdo;->d:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/bcr;->c()Lcom/google/android/gms/internal/ads/dj;

    move-result-object v8

    instance-of v8, v8, Lcom/google/android/gms/internal/ads/dd;

    if-nez v8, :cond_7

    move-object v2, v5

    goto :goto_5

    .line 1123
    :cond_7
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/bdo;->d:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/bcr;->c()Lcom/google/android/gms/internal/ads/dj;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/dd;

    if-nez v4, :cond_8

    .line 2025
    iget v9, v8, Lcom/google/android/gms/internal/ads/dd;->g:I

    .line 1125
    invoke-static {v6, v9}, Lcom/google/android/gms/internal/ads/bdo;->a(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 1126
    :cond_8
    new-instance v9, Lcom/google/android/gms/internal/ads/zzaec;

    invoke-direct {v9, v2, v8, v6}, Lcom/google/android/gms/internal/ads/zzaec;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/dd;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 1127
    sget-object v2, Lcom/google/android/gms/internal/ads/aq;->bY:Lcom/google/android/gms/internal/ads/af;

    .line 1128
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v2

    .line 1129
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v9, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v2, v9

    :cond_9
    :goto_5
    const/4 v6, -0x1

    if-eqz v2, :cond_d

    .line 1133
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroid/view/ViewGroup;

    if-eqz v8, :cond_a

    .line 1134
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_a
    if-eqz v4, :cond_b

    .line 1136
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1137
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 1138
    :cond_b
    new-instance v4, Lcom/google/android/gms/ads/formats/AdChoicesView;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ben;->c()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/google/android/gms/ads/formats/AdChoicesView;-><init>(Landroid/content/Context;)V

    .line 1139
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Lcom/google/android/gms/ads/formats/AdChoicesView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1140
    invoke-virtual {v4, v2}, Lcom/google/android/gms/ads/formats/AdChoicesView;->addView(Landroid/view/View;)V

    .line 1141
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ben;->b()Landroid/widget/FrameLayout;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 1143
    invoke-virtual {v7, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1144
    :cond_c
    :goto_6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ben;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Lcom/google/android/gms/internal/ads/ben;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 1147
    :cond_d
    sget-object v2, Lcom/google/android/gms/internal/ads/bdm;->a:[Ljava/lang/String;

    array-length v4, v2

    :goto_7
    if-ge v3, v4, :cond_f

    aget-object v7, v2, v3

    .line 1148
    invoke-interface {v1, v7}, Lcom/google/android/gms/internal/ads/ben;->a_(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    .line 1149
    instance-of v8, v7, Landroid/view/ViewGroup;

    if-eqz v8, :cond_e

    .line 1150
    check-cast v7, Landroid/view/ViewGroup;

    goto :goto_8

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    move-object v7, v5

    .line 1154
    :goto_8
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bdo;->f:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/android/gms/internal/ads/bdq;

    invoke-direct {v3, v0, v7}, Lcom/google/android/gms/internal/ads/bdq;-><init>(Lcom/google/android/gms/internal/ads/bdo;Landroid/view/ViewGroup;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-eqz v7, :cond_16

    .line 1156
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/bdo;->a(Landroid/view/ViewGroup;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1158
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bdo;->d:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bcr;->v()Lcom/google/android/gms/internal/ads/adt;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1159
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/bdo;->d:Lcom/google/android/gms/internal/ads/bcr;

    .line 1160
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bcr;->v()Lcom/google/android/gms/internal/ads/adt;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/bdp;

    invoke-direct {v3, v0, v1, v7}, Lcom/google/android/gms/internal/ads/bdp;-><init>(Lcom/google/android/gms/internal/ads/bdo;Lcom/google/android/gms/internal/ads/ben;Landroid/view/ViewGroup;)V

    .line 1161
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/adt;->a(Lcom/google/android/gms/internal/ads/dg;)V

    return-void

    .line 1162
    :cond_10
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1163
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ben;->c()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 1164
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_9

    :cond_11
    move-object v2, v5

    :goto_9
    if-eqz v2, :cond_16

    .line 1167
    sget-object v3, Lcom/google/android/gms/internal/ads/aq;->bX:Lcom/google/android/gms/internal/ads/af;

    .line 1168
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v3

    .line 1169
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1170
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bdo;->h:Lcom/google/android/gms/internal/ads/bcm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcm;->a()Lcom/google/android/gms/internal/ads/dq;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1172
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dq;->b()Lcom/google/android/gms/dynamic/b;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    const-string v0, "Could not get main image drawable"

    .line 1175
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    return-void

    .line 1177
    :cond_12
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bdo;->d:Lcom/google/android/gms/internal/ads/bcr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bcr;->g()Lcom/google/android/gms/internal/ads/dr;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1179
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dr;->a()Lcom/google/android/gms/dynamic/b;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_a
    if-eqz v0, :cond_16

    .line 1185
    invoke-static {v0}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 1187
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1188
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_13

    .line 1190
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ben;->i()Lcom/google/android/gms/dynamic/b;

    move-result-object v5

    :cond_13
    if-eqz v5, :cond_15

    .line 1191
    sget-object v0, Lcom/google/android/gms/internal/ads/aq;->dL:Lcom/google/android/gms/internal/ads/af;

    .line 1193
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object v0

    .line 1194
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_b

    .line 1197
    :cond_14
    invoke-static {v5}, Lcom/google/android/gms/dynamic/d;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView$ScaleType;

    .line 1198
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_c

    .line 1195
    :cond_15
    :goto_b
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1199
    :goto_c
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1200
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_d

    :catch_1
    const-string v0, "Could not get drawable from image"

    .line 1182
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    :cond_16
    :goto_d
    return-void
.end method
