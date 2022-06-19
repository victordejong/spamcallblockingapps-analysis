.class public final Lkotlin/reflect/jvm/internal/impl/b/c/a$c;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lkotlin/reflect/jvm/internal/impl/b/c/a$c;


# instance fields
.field public b:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

.field public c:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

.field public d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

.field public e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

.field private final g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private h:I

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3192
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 3787
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;-><init>(Z)V

    .line 3788
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->f:Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->l()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3099
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 v0, -0x1

    .line 3282
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->i:B

    .line 3310
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->j:I

    .line 3100
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->l()V

    .line 3102
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 3104
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_e

    .line 3110
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v5, 0xa

    const/4 v6, 0x0

    if-eq v4, v5, :cond_a

    const/16 v5, 0x12

    if-eq v4, v5, :cond_7

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_1

    .line 3116
    invoke-virtual {p0, p1, v2, p2, v4}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 3163
    :cond_1
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    const/16 v5, 0x8

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_2

    .line 3164
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->g()Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    move-result-object v6

    .line 3166
    :cond_2
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v4, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    iput-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    if-eqz v6, :cond_3

    .line 3168
    invoke-virtual {v6, v4}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    .line 3169
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->f()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object v4

    iput-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    .line 3171
    :cond_3
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    or-int/2addr v4, v5

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    goto :goto_0

    .line 3150
    :cond_4
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_5

    .line 3151
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->g()Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    move-result-object v6

    .line 3153
    :cond_5
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v4, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    iput-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    if-eqz v6, :cond_6

    .line 3155
    invoke-virtual {v6, v4}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    .line 3156
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->f()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object v4

    iput-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    .line 3158
    :cond_6
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    or-int/2addr v4, v5

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    goto :goto_0

    .line 3137
    :cond_7
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_8

    .line 3138
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->g()Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    move-result-object v6

    .line 3140
    :cond_8
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v4, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    iput-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    if-eqz v6, :cond_9

    .line 3142
    invoke-virtual {v6, v4}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;

    .line 3143
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b$a;->f()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object v4

    iput-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    .line 3145
    :cond_9
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    or-int/2addr v4, v5

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    goto/16 :goto_0

    .line 3124
    :cond_a
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_b

    .line 3125
    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->g()Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;

    move-result-object v6

    .line 3127
    :cond_b
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    invoke-virtual {p1, v4, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/r;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    iput-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    if-eqz v6, :cond_c

    .line 3129
    invoke-virtual {v6, v4}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$a;)Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;

    .line 3130
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a$a;->f()Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    move-result-object v4

    iput-object v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    .line 3132
    :cond_c
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    or-int/2addr v4, v1

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_d
    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3179
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 6057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 3179
    throw p2

    :catch_1
    move-exception p1

    .line 5057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 3177
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3183
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3187
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 3189
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->w()V

    throw p1

    .line 3183
    :cond_e
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3187
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 3189
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/c/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3075
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V
    .locals 1

    .line 3081
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    const/4 v0, -0x1

    .line 3282
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->i:B

    .line 3310
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->j:I

    .line 4123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 3082
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/c/a$1;)V
    .locals 0

    .line 3075
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 3084
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 p1, -0x1

    .line 3282
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->i:B

    .line 3310
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->j:I

    .line 3084
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;I)I
    .locals 0

    .line 3075
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;Lkotlin/reflect/jvm/internal/impl/b/c/a$a;)Lkotlin/reflect/jvm/internal/impl/b/c/a$a;
    .locals 0

    .line 3075
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    return-object p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b;
    .locals 0

    .line 3075
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    return-object p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/c/a$c;
    .locals 1

    .line 3088
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->f:Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

    return-object v0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 3075
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b;
    .locals 0

    .line 3075
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    return-object p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/b/c/a$b;
    .locals 0

    .line 3075
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    return-object p1
.end method

.method private l()V
    .locals 1

    .line 3277
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$a;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    .line 3278
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    .line 3279
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    .line 3280
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$b;->a()Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3294
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->f()I

    .line 3295
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3296
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 3298
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3299
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 3301
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 3302
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-virtual {p1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 3304
    :cond_2
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 3305
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)V

    .line 3307
    :cond_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a$c;",
            ">;"
        }
    .end annotation

    .line 3204
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 3214
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    .line 3233
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 2

    .line 3284
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->i:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3288
    :cond_1
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->i:B

    return v1
.end method

.method public final f()I
    .locals 4

    .line 3312
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 3316
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3317
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a$a;

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3320
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 3321
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3324
    :cond_2
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 3325
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-static {v0, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3328
    :cond_3
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    .line 3329
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(ILkotlin/reflect/jvm/internal/impl/protobuf/p;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3332
    :cond_4
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v0

    add-int/2addr v2, v0

    .line 3333
    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->j:I

    return v2
.end method

.method public final g()Z
    .locals 2

    .line 3252
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic h()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 8397
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->f()Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

    move-result-object v0

    .line 7400
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a$c;)Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 9397
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;->f()Lkotlin/reflect/jvm/internal/impl/b/c/a$c$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 10092
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->f:Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    .line 3267
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->h:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
