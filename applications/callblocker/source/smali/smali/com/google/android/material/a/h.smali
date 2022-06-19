.class public Lcom/google/android/material/a/h;
.super Ljava/lang/Object;
.source "MotionSpec.java"


# instance fields
.field private final a:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/material/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroidx/b/g;

    invoke-direct {v0}, Landroidx/b/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/a/h;->a:Landroidx/b/g;

    .line 71
    new-instance v0, Landroidx/b/g;

    invoke-direct {v0}, Landroidx/b/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/a/h;->b:Landroidx/b/g;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/google/android/material/a/h;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 188
    :try_start_0
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 189
    instance-of v2, v0, Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    .line 190
    check-cast v0, Landroid/animation/AnimatorSet;

    .line 191
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/a/h;->a(Ljava/util/List;)Lcom/google/android/material/a/h;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    .line 192
    :cond_0
    if-eqz v0, :cond_1

    .line 193
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-static {v2}, Lcom/google/android/material/a/h;->a(Ljava/util/List;)Lcom/google/android/material/a/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 197
    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    const-string/jumbo v2, "MotionSpec"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 201
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/a/h;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-static {p0, v0}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Lcom/google/android/material/a/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)",
            "Lcom/google/android/material/a/h;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v2, Lcom/google/android/material/a/h;

    invoke-direct {v2}, Lcom/google/android/material/a/h;-><init>()V

    .line 208
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 209
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-static {v2, v0}, Lcom/google/android/material/a/h;->a(Lcom/google/android/material/a/h;Landroid/animation/Animator;)V

    .line 208
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 211
    :cond_0
    return-object v2
.end method

.method private static a(Lcom/google/android/material/a/h;Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 215
    instance-of v0, p1, Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 216
    check-cast p1, Landroid/animation/ObjectAnimator;

    .line 217
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/a/h;->a(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V

    .line 218
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/material/a/i;->a(Landroid/animation/ValueAnimator;)Lcom/google/android/material/a/i;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/a/h;->a(Ljava/lang/String;Lcom/google/android/material/a/i;)V

    .line 222
    return-void

    .line 220
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Animator must be an ObjectAnimator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()J
    .locals 10

    .prologue
    .line 160
    const-wide/16 v2, 0x0

    .line 161
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/material/a/h;->a:Landroidx/b/g;

    invoke-virtual {v1}, Landroidx/b/g;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/android/material/a/h;->a:Landroidx/b/g;

    invoke-virtual {v0, v1}, Landroidx/b/g;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/a/i;

    .line 163
    invoke-virtual {v0}, Lcom/google/android/material/a/i;->a()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/google/android/material/a/i;->b()J

    move-result-wide v8

    add-long/2addr v6, v8

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 161
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 165
    :cond_0
    return-wide v2
.end method

.method public a(Ljava/lang/String;Lcom/google/android/material/a/i;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/material/a/h;->a:Landroidx/b/g;

    invoke-virtual {v0, p1, p2}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public a(Ljava/lang/String;[Landroid/animation/PropertyValuesHolder;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/material/a/h;->b:Landroidx/b/g;

    invoke-virtual {v0, p1, p2}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/material/a/h;->a:Landroidx/b/g;

    invoke-virtual {v0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/material/a/i;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/google/android/material/a/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/a/h;->a:Landroidx/b/g;

    invoke-virtual {v0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/a/i;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 226
    if-ne p0, p1, :cond_0

    .line 227
    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    .line 229
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/a/h;

    if-nez v0, :cond_1

    .line 230
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :cond_1
    check-cast p1, Lcom/google/android/material/a/h;

    .line 235
    iget-object v0, p0, Lcom/google/android/material/a/h;->a:Landroidx/b/g;

    iget-object v1, p1, Lcom/google/android/material/a/h;->a:Landroidx/b/g;

    invoke-virtual {v0, v1}, Landroidx/b/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/material/a/h;->a:Landroidx/b/g;

    invoke-virtual {v0}, Landroidx/b/g;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string/jumbo v1, " timings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v1, p0, Lcom/google/android/material/a/h;->a:Landroidx/b/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    const-string/jumbo v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
