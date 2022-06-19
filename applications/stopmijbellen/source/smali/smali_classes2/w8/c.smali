.class public abstract Lw8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/n;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Object;

.field public c:Lw8/j;

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>(Lw8/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lw8/c;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lw8/c;->c:Lw8/j;

    return-void
.end method

.method public static i(Ljava/lang/Object;ZZ)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, "NULL"

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 2
    invoke-static {}, Lcom/raizlabs/android/dbflow/config/FlowManager;->a()V

    .line 3
    sget-object v0, Lcom/raizlabs/android/dbflow/config/FlowManager;->b:Lcom/raizlabs/android/dbflow/config/FlowManager$GlobalDatabaseHolder;

    invoke-virtual {v0, p2}, Lcom/raizlabs/android/dbflow/config/d;->getTypeConverterForClass(Ljava/lang/Class;)Ls8/g;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2, p0}, Ls8/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    :cond_1
    instance-of p2, p0, Ljava/lang/Number;

    if-eqz p2, :cond_2

    .line 6
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 7
    :cond_2
    instance-of p2, p0, Ljava/lang/Enum;

    if-eqz p2, :cond_3

    .line 8
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    :cond_3
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 9
    instance-of p1, p0, Lw8/b;

    if-eqz p1, :cond_4

    new-array p1, v0, [Ljava/lang/Object;

    .line 10
    check-cast p0, Lw8/b;

    invoke-interface {p0}, Lv8/a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, p2

    const-string p0, "(%1s)"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 11
    :cond_4
    instance-of p1, p0, Lw8/j;

    if-eqz p1, :cond_5

    .line 12
    check-cast p0, Lw8/j;

    invoke-virtual {p0}, Lw8/j;->b()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 13
    :cond_5
    instance-of p1, p0, Lw8/n;

    if-eqz p1, :cond_6

    .line 14
    new-instance p1, Lv8/b;

    invoke-direct {p1}, Lv8/b;-><init>()V

    .line 15
    check-cast p0, Lw8/n;

    invoke-interface {p0, p1}, Lw8/n;->c(Lv8/b;)V

    .line 16
    invoke-virtual {p1}, Lv8/b;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 17
    :cond_6
    instance-of p1, p0, Lv8/a;

    if-eqz p1, :cond_7

    .line 18
    check-cast p0, Lv8/a;

    invoke-interface {p0}, Lv8/a;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 19
    :cond_7
    instance-of p1, p0, Lt8/a;

    if-nez p1, :cond_9

    instance-of v1, p0, [B

    if-eqz v1, :cond_8

    goto :goto_0

    .line 20
    :cond_8
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "?"

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 22
    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_9
    :goto_0
    if-eqz p1, :cond_a

    .line 23
    check-cast p0, Lt8/a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    goto :goto_1

    .line 24
    :cond_a
    check-cast p0, [B

    :goto_1
    const-string p1, "X"

    .line 25
    invoke-static {p1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Lv8/d;->a:[C

    .line 26
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 27
    :goto_2
    array-length v2, p0

    if-ge p2, v2, :cond_b

    .line 28
    aget-byte v2, p0, p2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, p2, 0x2

    .line 29
    sget-object v4, Lv8/d;->a:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v1, v3

    add-int/2addr v3, v0

    and-int/lit8 v2, v2, 0xf

    .line 30
    aget-char v2, v4, v2

    aput-char v2, v1, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 31
    :cond_b
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    .line 32
    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_c
    :goto_3
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw8/c;->c:Lw8/j;

    invoke-virtual {v0}, Lw8/j;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lw8/n;
    .locals 0

    .line 1
    iput-object p1, p0, Lw8/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw8/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw8/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, p2, v0}, Lw8/c;->i(Ljava/lang/Object;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public value()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lw8/c;->b:Ljava/lang/Object;

    return-object v0
.end method
