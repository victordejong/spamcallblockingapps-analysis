.class public final Lkotlin/i/e$a;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/i/e;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lkotlin/f/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/i/e;

.field private b:I

.field private c:I

.field private d:I

.field private e:Lkotlin/f/c;

.field private f:I


# direct methods
.method constructor <init>(Lkotlin/i/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1079
    iput-object p1, p0, Lkotlin/i/e$a;->a:Lkotlin/i/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1080
    iput v0, p0, Lkotlin/i/e$a;->b:I

    .line 1081
    invoke-static {p1}, Lkotlin/i/e;->d(Lkotlin/i/e;)I

    move-result v0

    invoke-static {p1}, Lkotlin/i/e;->b(Lkotlin/i/e;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lkotlin/f/d;->a(III)I

    move-result p1

    iput p1, p0, Lkotlin/i/e$a;->c:I

    .line 1082
    iget p1, p0, Lkotlin/i/e$a;->c:I

    iput p1, p0, Lkotlin/i/e$a;->d:I

    return-void
.end method

.method private final b()V
    .locals 6

    .line 1087
    iget v0, p0, Lkotlin/i/e$a;->d:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1088
    iput v1, p0, Lkotlin/i/e$a;->b:I

    const/4 v0, 0x0

    .line 1089
    check-cast v0, Lkotlin/f/c;

    iput-object v0, p0, Lkotlin/i/e$a;->e:Lkotlin/f/c;

    goto/16 :goto_1

    .line 1091
    :cond_0
    iget-object v0, p0, Lkotlin/i/e$a;->a:Lkotlin/i/e;

    invoke-static {v0}, Lkotlin/i/e;->a(Lkotlin/i/e;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lkotlin/i/e$a;->f:I

    add-int/2addr v0, v3

    iput v0, p0, Lkotlin/i/e$a;->f:I

    iget v0, p0, Lkotlin/i/e$a;->f:I

    iget-object v4, p0, Lkotlin/i/e$a;->a:Lkotlin/i/e;

    invoke-static {v4}, Lkotlin/i/e;->a(Lkotlin/i/e;)I

    move-result v4

    if-ge v0, v4, :cond_2

    :cond_1
    iget v0, p0, Lkotlin/i/e$a;->d:I

    iget-object v4, p0, Lkotlin/i/e$a;->a:Lkotlin/i/e;

    invoke-static {v4}, Lkotlin/i/e;->b(Lkotlin/i/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    .line 1092
    :cond_2
    iget v0, p0, Lkotlin/i/e$a;->c:I

    new-instance v1, Lkotlin/f/c;

    iget-object v4, p0, Lkotlin/i/e$a;->a:Lkotlin/i/e;

    invoke-static {v4}, Lkotlin/i/e;->b(Lkotlin/i/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lkotlin/i/g;->b(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lkotlin/f/c;-><init>(II)V

    iput-object v1, p0, Lkotlin/i/e$a;->e:Lkotlin/f/c;

    .line 1093
    iput v2, p0, Lkotlin/i/e$a;->d:I

    goto :goto_0

    .line 1095
    :cond_3
    iget-object v0, p0, Lkotlin/i/e$a;->a:Lkotlin/i/e;

    invoke-static {v0}, Lkotlin/i/e;->c(Lkotlin/i/e;)Lkotlin/e/a/m;

    move-result-object v0

    iget-object v4, p0, Lkotlin/i/e$a;->a:Lkotlin/i/e;

    invoke-static {v4}, Lkotlin/i/e;->b(Lkotlin/i/e;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lkotlin/i/e$a;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lkotlin/e/a/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/i;

    if-nez v0, :cond_4

    .line 1097
    iget v0, p0, Lkotlin/i/e$a;->c:I

    new-instance v1, Lkotlin/f/c;

    iget-object v4, p0, Lkotlin/i/e$a;->a:Lkotlin/i/e;

    invoke-static {v4}, Lkotlin/i/e;->b(Lkotlin/i/e;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lkotlin/i/g;->b(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lkotlin/f/c;-><init>(II)V

    iput-object v1, p0, Lkotlin/i/e$a;->e:Lkotlin/f/c;

    .line 1098
    iput v2, p0, Lkotlin/i/e$a;->d:I

    goto :goto_0

    .line 1100
    :cond_4
    invoke-virtual {v0}, Lkotlin/i;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/i;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1101
    iget v4, p0, Lkotlin/i/e$a;->c:I

    invoke-static {v4, v2}, Lkotlin/f/d;->b(II)Lkotlin/f/c;

    move-result-object v4

    iput-object v4, p0, Lkotlin/i/e$a;->e:Lkotlin/f/c;

    add-int/2addr v2, v0

    .line 1102
    iput v2, p0, Lkotlin/i/e$a;->c:I

    .line 1103
    iget v2, p0, Lkotlin/i/e$a;->c:I

    if-nez v0, :cond_5

    move v1, v3

    :cond_5
    add-int/2addr v2, v1

    iput v2, p0, Lkotlin/i/e$a;->d:I

    .line 1106
    :goto_0
    iput v3, p0, Lkotlin/i/e$a;->b:I

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lkotlin/f/c;
    .locals 3

    .line 1111
    iget v0, p0, Lkotlin/i/e$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1112
    invoke-direct {p0}, Lkotlin/i/e$a;->b()V

    .line 1113
    :cond_0
    iget v0, p0, Lkotlin/i/e$a;->b:I

    if-eqz v0, :cond_2

    .line 1115
    iget-object v0, p0, Lkotlin/i/e$a;->e:Lkotlin/f/c;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 1117
    check-cast v2, Lkotlin/f/c;

    iput-object v2, p0, Lkotlin/i/e$a;->e:Lkotlin/f/c;

    .line 1118
    iput v1, p0, Lkotlin/i/e$a;->b:I

    return-object v0

    .line 1115
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1114
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1123
    iget v0, p0, Lkotlin/i/e$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1124
    invoke-direct {p0}, Lkotlin/i/e$a;->b()V

    .line 1125
    :cond_0
    iget v0, p0, Lkotlin/i/e$a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1079
    invoke-virtual {p0}, Lkotlin/i/e$a;->a()Lkotlin/f/c;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
