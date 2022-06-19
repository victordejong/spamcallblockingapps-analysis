.class final Lcom/google/android/material/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/h$a;
    }
.end annotation


# static fields
.field private static f:Z

.field private static g:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/lang/Object;


# instance fields
.field a:Landroid/text/Layout$Alignment;

.field b:I

.field c:Z

.field d:Z

.field e:Landroid/text/TextUtils$TruncateAt;

.field private i:Ljava/lang/CharSequence;

.field private final j:Landroid/text/TextPaint;

.field private final k:I

.field private l:I

.field private m:I


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/android/material/internal/h;->i:Ljava/lang/CharSequence;

    .line 79
    iput-object p2, p0, Lcom/google/android/material/internal/h;->j:Landroid/text/TextPaint;

    .line 80
    iput p3, p0, Lcom/google/android/material/internal/h;->k:I

    const/4 p2, 0x0

    .line 81
    iput p2, p0, Lcom/google/android/material/internal/h;->l:I

    .line 82
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/h;->m:I

    .line 83
    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object p1, p0, Lcom/google/android/material/internal/h;->a:Landroid/text/Layout$Alignment;

    const p1, 0x7fffffff

    .line 84
    iput p1, p0, Lcom/google/android/material/internal/h;->b:I

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/google/android/material/internal/h;->c:Z

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/google/android/material/internal/h;->e:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/h;
    .locals 1

    .line 100
    new-instance v0, Lcom/google/android/material/internal/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/internal/h;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/text/StaticLayout;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/material/internal/h$a;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 182
    iget-object v0, v1, Lcom/google/android/material/internal/h;->i:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 183
    iput-object v0, v1, Lcom/google/android/material/internal/h;->i:Ljava/lang/CharSequence;

    .line 187
    :cond_0
    iget v0, v1, Lcom/google/android/material/internal/h;->k:I

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 188
    iget-object v3, v1, Lcom/google/android/material/internal/h;->i:Ljava/lang/CharSequence;

    .line 189
    iget v4, v1, Lcom/google/android/material/internal/h;->b:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 190
    iget-object v4, v1, Lcom/google/android/material/internal/h;->j:Landroid/text/TextPaint;

    int-to-float v6, v0

    iget-object v7, v1, Lcom/google/android/material/internal/h;->e:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v4, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 193
    :cond_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v6, v1, Lcom/google/android/material/internal/h;->m:I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Lcom/google/android/material/internal/h;->m:I

    .line 194
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v4, v6, :cond_5

    .line 195
    iget-boolean v2, v1, Lcom/google/android/material/internal/h;->d:Z

    if-eqz v2, :cond_2

    .line 196
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    iput-object v2, v1, Lcom/google/android/material/internal/h;->a:Landroid/text/Layout$Alignment;

    .line 200
    :cond_2
    iget v2, v1, Lcom/google/android/material/internal/h;->l:I

    iget v4, v1, Lcom/google/android/material/internal/h;->m:I

    iget-object v5, v1, Lcom/google/android/material/internal/h;->j:Landroid/text/TextPaint;

    .line 201
    invoke-static {v3, v2, v4, v5, v0}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 203
    iget-object v2, v1, Lcom/google/android/material/internal/h;->a:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    .line 204
    iget-boolean v2, v1, Lcom/google/android/material/internal/h;->c:Z

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    .line 205
    iget-boolean v2, v1, Lcom/google/android/material/internal/h;->d:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 208
    :goto_0
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    .line 209
    iget-object v2, v1, Lcom/google/android/material/internal/h;->e:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_4

    .line 210
    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    .line 212
    :cond_4
    iget v2, v1, Lcom/google/android/material/internal/h;->b:I

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 213
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0

    .line 1260
    :cond_5
    sget-boolean v4, Lcom/google/android/material/internal/h;->f:Z

    const/16 v10, 0x9

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/16 v7, 0xd

    if-nez v4, :cond_a

    .line 1266
    :try_start_0
    iget-boolean v4, v1, Lcom/google/android/material/internal/h;->d:Z

    if-eqz v4, :cond_6

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    .line 1267
    :goto_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x12

    if-lt v6, v8, :cond_8

    .line 1268
    const-class v6, Landroid/text/TextDirectionHeuristic;

    if-eqz v4, :cond_7

    .line 1269
    sget-object v4, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :cond_7
    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    :goto_2
    sput-object v4, Lcom/google/android/material/internal/h;->h:Ljava/lang/Object;

    goto :goto_4

    .line 1271
    :cond_8
    const-class v4, Lcom/google/android/material/internal/h;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 1272
    iget-boolean v6, v1, Lcom/google/android/material/internal/h;->d:Z

    if-eqz v6, :cond_9

    const-string v6, "RTL"

    goto :goto_3

    :cond_9
    const-string v6, "LTR"

    :goto_3
    const-string v8, "android.text.TextDirectionHeuristic"

    .line 1273
    invoke-virtual {v4, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "android.text.TextDirectionHeuristics"

    .line 1274
    invoke-virtual {v4, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1275
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Lcom/google/android/material/internal/h;->h:Ljava/lang/Object;

    move-object v6, v8

    :goto_4
    new-array v4, v7, [Ljava/lang/Class;

    .line 1278
    const-class v8, Ljava/lang/CharSequence;

    aput-object v8, v4, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v5

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v17

    const-class v8, Landroid/text/TextPaint;

    aput-object v8, v4, v16

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v4, v15

    const-class v8, Landroid/text/Layout$Alignment;

    aput-object v8, v4, v14

    aput-object v6, v4, v13

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v12

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v11

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v10

    const-class v6, Landroid/text/TextUtils$TruncateAt;

    const/16 v8, 0xa

    aput-object v6, v4, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0xb

    aput-object v6, v4, v8

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0xc

    aput-object v6, v4, v8

    .line 1295
    const-class v6, Landroid/text/StaticLayout;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 1296
    sput-object v4, Lcom/google/android/material/internal/h;->g:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1297
    sput-boolean v5, Lcom/google/android/material/internal/h;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 1299
    new-instance v2, Lcom/google/android/material/internal/h$a;

    invoke-direct {v2, v0}, Lcom/google/android/material/internal/h$a;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 219
    :cond_a
    :goto_5
    :try_start_1
    sget-object v4, Lcom/google/android/material/internal/h;->g:Ljava/lang/reflect/Constructor;

    invoke-static {v4}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Constructor;

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v2

    iget v2, v1, Lcom/google/android/material/internal/h;->l:I

    .line 222
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v5

    iget v2, v1, Lcom/google/android/material/internal/h;->m:I

    .line 223
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v17

    iget-object v2, v1, Lcom/google/android/material/internal/h;->j:Landroid/text/TextPaint;

    aput-object v2, v6, v16

    .line 225
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v15

    iget-object v2, v1, Lcom/google/android/material/internal/h;->a:Landroid/text/Layout$Alignment;

    aput-object v2, v6, v14

    sget-object v2, Lcom/google/android/material/internal/h;->h:Ljava/lang/Object;

    .line 227
    invoke-static {v2}, Landroidx/core/e/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v6, v13

    const/high16 v2, 0x3f800000    # 1.0f

    .line 228
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v12

    const/4 v2, 0x0

    .line 229
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v11

    iget-boolean v2, v1, Lcom/google/android/material/internal/h;->c:Z

    .line 230
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v10

    const/4 v2, 0x0

    const/16 v3, 0xa

    aput-object v2, v6, v3

    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, v6, v2

    iget v0, v1, Lcom/google/android/material/internal/h;->b:I

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xc

    aput-object v0, v6, v2

    .line 220
    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 235
    new-instance v2, Lcom/google/android/material/internal/h$a;

    invoke-direct {v2, v0}, Lcom/google/android/material/internal/h$a;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
