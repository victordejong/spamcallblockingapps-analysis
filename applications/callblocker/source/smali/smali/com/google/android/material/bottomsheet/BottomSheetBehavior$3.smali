.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;
.super Landroidx/d/b/c$a;
.source "BottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Landroidx/d/b/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 1

    .prologue
    .line 1324
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1233
    if-ne p1, v1, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e(I)V

    .line 1236
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x6

    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 1242
    cmpg-float v3, p3, v5

    if-gez v3, :cond_2

    .line 1243
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    move v3, v2

    .line 1313
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;IIZ)V

    .line 1314
    return-void

    .line 1247
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1248
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    if-le v2, v3, :cond_1

    .line 1249
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    move v2, v1

    :goto_1
    move v1, v0

    move v3, v2

    .line 1255
    goto :goto_0

    .line 1252
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:I

    move v0, v1

    .line 1253
    goto :goto_1

    .line 1256
    :cond_2
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1257
    invoke-virtual {v3, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;F)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1258
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    if-gt v3, v4, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 1261
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    .line 1262
    const/4 v1, 0x5

    move v3, v2

    goto :goto_0

    .line 1263
    :cond_4
    cmpl-float v3, p3, v5

    if-eqz v3, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_b

    .line 1266
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1267
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1268
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int/2addr v3, v4

    .line 1269
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 1270
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:I

    move v3, v0

    .line 1271
    goto :goto_0

    .line 1273
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    move v1, v2

    move v3, v0

    .line 1274
    goto/16 :goto_0

    .line 1277
    :cond_7
    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    if-ge v3, v4, :cond_9

    .line 1278
    iget-object v2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v3, v2, :cond_8

    .line 1279
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:I

    move v3, v0

    .line 1280
    goto/16 :goto_0

    .line 1282
    :cond_8
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    move v1, v0

    move v3, v2

    .line 1283
    goto/16 :goto_0

    .line 1286
    :cond_9
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    sub-int v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int/2addr v3, v4

    .line 1287
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 1288
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    move v1, v0

    move v3, v2

    .line 1289
    goto/16 :goto_0

    .line 1291
    :cond_a
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    move v1, v2

    move v3, v0

    .line 1292
    goto/16 :goto_0

    .line 1297
    :cond_b
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1298
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v3, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    move v1, v2

    .line 1299
    goto/16 :goto_0

    .line 1302
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1303
    iget-object v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v4, v4, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    sub-int/2addr v1, v4

    .line 1304
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v3, v1, :cond_d

    .line 1305
    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v2, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c:I

    move v1, v0

    move v3, v2

    .line 1306
    goto/16 :goto_0

    .line 1308
    :cond_d
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v3, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    move v1, v2

    .line 1309
    goto/16 :goto_0
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {v0, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f(I)V

    .line 1229
    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    .line 1332
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    goto :goto_0
.end method

.method public b(Landroid/view/View;II)I
    .locals 2

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 1319
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->c(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)I

    move-result v1

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k:I

    .line 1318
    :goto_0
    invoke-static {p2, v1, v0}, Landroidx/core/c/a;->a(III)I

    move-result v0

    return v0

    .line 1319
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->e:I

    goto :goto_0
.end method

.method public b(Landroid/view/View;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1209
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    if-ne v0, v1, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return v2

    .line 1212
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->o:Z

    if-nez v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    if-ne v0, p2, :cond_2

    .line 1216
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1217
    :goto_1
    if-eqz v0, :cond_2

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_4

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_0

    .line 1216
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v0, v2

    .line 1222
    goto :goto_2
.end method
