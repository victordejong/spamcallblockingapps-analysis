.class public final Lorg/mistergroup/shouldianswer/model/communityDatabase/f;
.super Ljava/lang/Object;
.source "FeaturedSliceNode.kt"


# instance fields
.field private a:[Lorg/mistergroup/shouldianswer/model/communityDatabase/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)I
    .locals 4

    const-string v0, "number"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p2, v0}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v2

    .line 27
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/f;->a:[Lorg/mistergroup/shouldianswer/model/communityDatabase/f;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    aget-object v0, v0, v2

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 29
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/f;->a:[Lorg/mistergroup/shouldianswer/model/communityDatabase/f;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    aget-object v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    invoke-virtual {v0, p1, p2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/f;->a(ILjava/lang/String;)I

    move-result p1

    return p1

    .line 31
    :cond_3
    sget-object p1, Lorg/mistergroup/shouldianswer/utils/j;->a:Lorg/mistergroup/shouldianswer/utils/j;

    const/4 p2, 0x2

    const/4 v0, 0x0

    const-string v2, "getSliceId Number is shorter than sliceTree"

    invoke-static {p1, v2, v0, p2, v0}, Lorg/mistergroup/shouldianswer/utils/j;->a(Lorg/mistergroup/shouldianswer/utils/j;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return v1

    :cond_4
    return p1
.end method

.method public final a(Ljava/lang/String;I)I
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/mistergroup/shouldianswer/model/communityDatabase/f;

    .line 9
    iput-object v0, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/f;->a:[Lorg/mistergroup/shouldianswer/model/communityDatabase/f;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-gt v0, v1, :cond_4

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 14
    :cond_0
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/f;->a:[Lorg/mistergroup/shouldianswer/model/communityDatabase/f;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    new-instance v2, Lorg/mistergroup/shouldianswer/model/communityDatabase/f;

    invoke-direct {v2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/f;-><init>()V

    aput-object v2, v1, v0

    .line 15
    iget-object v1, p0, Lorg/mistergroup/shouldianswer/model/communityDatabase/f;->a:[Lorg/mistergroup/shouldianswer/model/communityDatabase/f;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    aget-object v1, v1, v0

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v1, p1, p2}, Lorg/mistergroup/shouldianswer/model/communityDatabase/f;->a(Ljava/lang/String;I)I

    move-result p2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return p2
.end method
