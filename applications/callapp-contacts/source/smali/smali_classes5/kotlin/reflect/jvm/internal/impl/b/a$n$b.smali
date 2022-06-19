.class public final Lkotlin/reflect/jvm/internal/impl/b/a$n$b;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/b/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/b/a$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;,
        Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;
    }
.end annotation


# static fields
.field public static a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$n$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lkotlin/reflect/jvm/internal/impl/b/a$n$b;


# instance fields
.field public b:I

.field public c:I

.field public d:Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;

.field private final f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

.field private g:I

.field private h:B

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 970
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    .line 1457
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;-><init>(Z)V

    .line 1458
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->e:Lkotlin/reflect/jvm/internal/impl/b/a$n$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->k()V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 907
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 v0, -0x1

    .line 1109
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->h:B

    .line 1138
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->i:I

    .line 908
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->k()V

    .line 910
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->h()Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 912
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(Ljava/io/OutputStream;I)Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-nez v3, :cond_6

    .line 918
    :try_start_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->a()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    const/16 v5, 0x10

    if-eq v4, v5, :cond_3

    const/16 v5, 0x18

    if-eq v4, v5, :cond_1

    .line 924
    invoke-virtual {p0, p1, v2, p2, v4}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;Lkotlin/reflect/jvm/internal/impl/protobuf/f;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 3570
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v5

    .line 942
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;->valueOf(I)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;

    move-result-object v6

    if-nez v6, :cond_2

    .line 944
    invoke-virtual {v2, v4}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    .line 945
    invoke-virtual {v2, v5}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->e(I)V

    goto :goto_0

    .line 947
    :cond_2
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->g:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->g:I

    .line 948
    iput-object v6, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->d:Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;

    goto :goto_0

    .line 936
    :cond_3
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->g:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->g:I

    .line 3348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 937
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->c:I

    goto :goto_0

    .line 931
    :cond_4
    iget v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->g:I

    or-int/2addr v4, v1

    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->g:I

    .line 2348
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->d()I

    move-result v4

    .line 932
    iput v4, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->b:I
    :try_end_0
    .catch Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 957
    :try_start_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 5057
    iput-object p0, p2, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 957
    throw p2

    :catch_1
    move-exception p1

    .line 4057
    iput-object p0, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 955
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 961
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 965
    :catch_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 967
    :goto_3
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->w()V

    throw p1

    .line 961
    :cond_6
    :try_start_3
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 965
    :catch_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    goto :goto_4

    :catchall_2
    move-exception p1

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d$b;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    throw p1

    .line 967
    :goto_4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->w()V

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkotlin/reflect/jvm/internal/impl/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 883
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/e;Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    return-void
.end method

.method private constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V
    .locals 1

    .line 889
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    const/4 v0, -0x1

    .line 1109
    iput-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->h:B

    .line 1138
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->i:I

    .line 2123
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    .line 890
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;Lkotlin/reflect/jvm/internal/impl/b/a$1;)V
    .locals 0

    .line 883
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/h$a;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 892
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/h;-><init>()V

    const/4 p1, -0x1

    .line 1109
    iput-byte p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->h:B

    .line 1138
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->i:I

    .line 892
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$n$b;I)I
    .locals 0

    .line 883
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->b:I

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$n$b;Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;
    .locals 0

    .line 883
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->d:Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;

    return-object p1
.end method

.method public static a()Lkotlin/reflect/jvm/internal/impl/b/a$n$b;
    .locals 1

    .line 896
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->e:Lkotlin/reflect/jvm/internal/impl/b/a$n$b;

    return-object v0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$n$b;)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 0

    .line 883
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    return-object p0
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/b/a$n$b;I)I
    .locals 0

    .line 883
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->c:I

    return p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/b/a$n$b;I)I
    .locals 0

    .line 883
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->g:I

    return p1
.end method

.method private k()V
    .locals 1

    const/4 v0, -0x1

    .line 1105
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->b:I

    const/4 v0, 0x0

    .line 1106
    iput v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->c:I

    .line 1107
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;->PACKAGE:Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->d:Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1125
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->f()I

    .line 1126
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1127
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->b:I

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 1129
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->g:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1130
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->c:I

    invoke-virtual {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->a(II)V

    .line 1132
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->g:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 1133
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->d:Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->b(II)V

    .line 1135
    :cond_2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V

    return-void
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/protobuf/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/r<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$n$b;",
            ">;"
        }
    .end annotation

    .line 982
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/r;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    .line 1057
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->g:I

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

    .line 1076
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->g:I

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
    .locals 3

    .line 1111
    iget-byte v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->h:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1115
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1116
    iput-byte v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->h:B

    return v2

    .line 1119
    :cond_2
    iput-byte v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->h:B

    return v1
.end method

.method public final f()I
    .locals 3

    .line 1140
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1144
    :cond_0
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->g:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1145
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->b:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 1148
    :cond_1
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->g:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 1149
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->c:I

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->c(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 1152
    :cond_2
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->g:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x3

    .line 1153
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->d:Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$b;->getNumber()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream;->d(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 1156
    :cond_3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;->a()I

    move-result v0

    add-int/2addr v2, v0

    .line 1157
    iput v2, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->i:I

    return v2
.end method

.method public final g()Z
    .locals 2

    .line 1095
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->g:I

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

    .line 7221
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;

    move-result-object v0

    .line 6224
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$n$b;)Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic i()Lkotlin/reflect/jvm/internal/impl/protobuf/p$a;
    .locals 1

    .line 8221
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;->f()Lkotlin/reflect/jvm/internal/impl/b/a$n$b$a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 8900
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/a$n$b;->e:Lkotlin/reflect/jvm/internal/impl/b/a$n$b;

    return-object v0
.end method
