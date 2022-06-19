.class public Landroidx/work/l$a;
.super Landroidx/work/l;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroidx/work/l;-><init>(I)V

    .line 120
    iput p1, p0, Landroidx/work/l$a;->a:I

    .line 121
    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Landroidx/work/l$a;->a:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 126
    if-eqz p3, :cond_1

    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 127
    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-static {p1, p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Landroidx/work/l$a;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 137
    if-eqz p3, :cond_1

    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 138
    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-static {p1, p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 147
    iget v0, p0, Landroidx/work/l$a;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 148
    if-eqz p3, :cond_1

    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 149
    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-static {p1, p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Landroidx/work/l$a;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 159
    if-eqz p3, :cond_1

    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 160
    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-static {p1, p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 169
    iget v0, p0, Landroidx/work/l$a;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 170
    if-eqz p3, :cond_1

    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 171
    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-static {p1, p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
