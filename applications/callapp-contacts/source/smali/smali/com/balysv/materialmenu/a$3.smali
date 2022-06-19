.class final synthetic Lcom/balysv/materialmenu/a$3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/balysv/materialmenu/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 632
    invoke-static {}, Lcom/balysv/materialmenu/a$b;->values()[Lcom/balysv/materialmenu/a$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/balysv/materialmenu/a$3;->c:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/balysv/materialmenu/a$b;->BURGER:Lcom/balysv/materialmenu/a$b;

    invoke-virtual {v2}, Lcom/balysv/materialmenu/a$b;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/balysv/materialmenu/a$3;->c:[I

    sget-object v3, Lcom/balysv/materialmenu/a$b;->ARROW:Lcom/balysv/materialmenu/a$b;

    invoke-virtual {v3}, Lcom/balysv/materialmenu/a$b;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/balysv/materialmenu/a$3;->c:[I

    sget-object v4, Lcom/balysv/materialmenu/a$b;->X:Lcom/balysv/materialmenu/a$b;

    invoke-virtual {v4}, Lcom/balysv/materialmenu/a$b;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/balysv/materialmenu/a$3;->c:[I

    sget-object v5, Lcom/balysv/materialmenu/a$b;->CHECK:Lcom/balysv/materialmenu/a$b;

    invoke-virtual {v5}, Lcom/balysv/materialmenu/a$b;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 561
    :catch_3
    invoke-static {}, Lcom/balysv/materialmenu/a$d;->values()[Lcom/balysv/materialmenu/a$d;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/balysv/materialmenu/a$3;->b:[I

    :try_start_4
    sget-object v5, Lcom/balysv/materialmenu/a$d;->REGULAR:Lcom/balysv/materialmenu/a$d;

    invoke-virtual {v5}, Lcom/balysv/materialmenu/a$d;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/balysv/materialmenu/a$3;->b:[I

    sget-object v5, Lcom/balysv/materialmenu/a$d;->THIN:Lcom/balysv/materialmenu/a$d;

    invoke-virtual {v5}, Lcom/balysv/materialmenu/a$d;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/balysv/materialmenu/a$3;->b:[I

    sget-object v5, Lcom/balysv/materialmenu/a$d;->EXTRA_THIN:Lcom/balysv/materialmenu/a$d;

    invoke-virtual {v5}, Lcom/balysv/materialmenu/a$d;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 50
    :catch_6
    invoke-static {}, Lcom/balysv/materialmenu/a$a;->values()[Lcom/balysv/materialmenu/a$a;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/balysv/materialmenu/a$3;->a:[I

    :try_start_7
    sget-object v5, Lcom/balysv/materialmenu/a$a;->BURGER_ARROW:Lcom/balysv/materialmenu/a$a;

    invoke-virtual {v5}, Lcom/balysv/materialmenu/a$a;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcom/balysv/materialmenu/a$3;->a:[I

    sget-object v4, Lcom/balysv/materialmenu/a$a;->BURGER_X:Lcom/balysv/materialmenu/a$a;

    invoke-virtual {v4}, Lcom/balysv/materialmenu/a$a;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/balysv/materialmenu/a$3;->a:[I

    sget-object v1, Lcom/balysv/materialmenu/a$a;->ARROW_X:Lcom/balysv/materialmenu/a$a;

    invoke-virtual {v1}, Lcom/balysv/materialmenu/a$a;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/balysv/materialmenu/a$3;->a:[I

    sget-object v1, Lcom/balysv/materialmenu/a$a;->ARROW_CHECK:Lcom/balysv/materialmenu/a$a;

    invoke-virtual {v1}, Lcom/balysv/materialmenu/a$a;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/balysv/materialmenu/a$3;->a:[I

    sget-object v1, Lcom/balysv/materialmenu/a$a;->BURGER_CHECK:Lcom/balysv/materialmenu/a$a;

    invoke-virtual {v1}, Lcom/balysv/materialmenu/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/balysv/materialmenu/a$3;->a:[I

    sget-object v1, Lcom/balysv/materialmenu/a$a;->X_CHECK:Lcom/balysv/materialmenu/a$a;

    invoke-virtual {v1}, Lcom/balysv/materialmenu/a$a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    return-void
.end method
