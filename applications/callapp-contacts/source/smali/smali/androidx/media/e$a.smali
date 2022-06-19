.class Landroidx/media/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Landroidx/media/e$a;->a:Ljava/lang/String;

    .line 121
    iput p2, p0, Landroidx/media/e$a;->b:I

    .line 122
    iput p3, p0, Landroidx/media/e$a;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Landroidx/media/e$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 132
    iget v0, p0, Landroidx/media/e$a;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 137
    iget v0, p0, Landroidx/media/e$a;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 145
    :cond_0
    instance-of v1, p1, Landroidx/media/e$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 148
    :cond_1
    check-cast p1, Landroidx/media/e$a;

    .line 149
    iget v1, p0, Landroidx/media/e$a;->b:I

    if-ltz v1, :cond_4

    iget v1, p1, Landroidx/media/e$a;->b:I

    if-gez v1, :cond_2

    goto :goto_0

    .line 154
    :cond_2
    iget-object v1, p0, Landroidx/media/e$a;->a:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media/e$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/media/e$a;->b:I

    iget v3, p1, Landroidx/media/e$a;->b:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Landroidx/media/e$a;->c:I

    iget p1, p1, Landroidx/media/e$a;->c:I

    if-ne v1, p1, :cond_3

    return v0

    :cond_3
    return v2

    .line 151
    :cond_4
    :goto_0
    iget-object v1, p0, Landroidx/media/e$a;->a:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media/e$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Landroidx/media/e$a;->c:I

    iget p1, p1, Landroidx/media/e$a;->c:I

    if-ne v1, p1, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Landroidx/media/e$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media/e$a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/e/a;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
