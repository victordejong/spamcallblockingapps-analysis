.class final Lio/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/a/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/a/c$d<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private final c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    const-class v0, Lio/a/c;

    const/4 v0, 0x1

    sput-boolean v0, Lio/a/c$a;->a:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TK;TV;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p3, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    aput-object p4, v0, v3

    .line 129
    invoke-direct {p0, v1, v0}, Lio/a/c$a;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 130
    sget-boolean p2, Lio/a/c$a;->a:Z

    if-nez p2, :cond_1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p2

    if-ne p1, p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TV;)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lio/a/c$a;->b:[Ljava/lang/Object;

    .line 136
    iput-object p2, p0, Lio/a/c$a;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 141
    iget-object v0, p0, Lio/a/c$a;->c:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;II)Lio/a/c$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)",
            "Lio/a/c$d<",
            "TK;TV;>;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lio/a/c$a;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 160
    new-instance v1, Lio/a/c$c;

    invoke-direct {v1, p1, p2}, Lio/a/c$c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, p3, p0, v0, p4}, Lio/a/c$b;->a(Lio/a/c$d;ILio/a/c$d;II)Lio/a/c$d;

    move-result-object p1

    return-object p1

    .line 1181
    :cond_0
    :goto_0
    iget-object p3, p0, Lio/a/c$a;->b:[Ljava/lang/Object;

    array-length p4, p3

    const/4 v0, -0x1

    if-ge v1, p4, :cond_2

    .line 1182
    aget-object p4, p3, v1

    if-ne p4, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_1
    if-eq v1, v0, :cond_3

    .line 164
    array-length p4, p3

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    .line 165
    iget-object p4, p0, Lio/a/c$a;->c:[Ljava/lang/Object;

    iget-object v0, p0, Lio/a/c$a;->b:[Ljava/lang/Object;

    array-length v0, v0

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    .line 166
    aput-object p1, p3, v1

    .line 167
    aput-object p2, p4, v1

    .line 168
    new-instance p1, Lio/a/c$a;

    invoke-direct {p1, p3, p4}, Lio/a/c$a;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object p1

    .line 171
    :cond_3
    array-length p4, p3

    add-int/lit8 p4, p4, 0x1

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    .line 172
    iget-object p4, p0, Lio/a/c$a;->c:[Ljava/lang/Object;

    iget-object v0, p0, Lio/a/c$a;->b:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    .line 173
    iget-object v0, p0, Lio/a/c$a;->b:[Ljava/lang/Object;

    array-length v1, v0

    aput-object p1, p3, v1

    .line 174
    array-length p1, v0

    aput-object p2, p4, p1

    .line 175
    new-instance p1, Lio/a/c$a;

    invoke-direct {p1, p3, p4}, Lio/a/c$a;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object p1
.end method

.method public final a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)TV;"
        }
    .end annotation

    const/4 p2, 0x0

    .line 146
    :goto_0
    iget-object p3, p0, Lio/a/c$a;->b:[Ljava/lang/Object;

    array-length v0, p3

    if-ge p2, v0, :cond_1

    .line 147
    aget-object p3, p3, p2

    if-ne p3, p1, :cond_0

    .line 148
    iget-object p1, p0, Lio/a/c$a;->c:[Ljava/lang/Object;

    aget-object p1, p1, p2

    return-object p1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollisionLeaf("

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 193
    :goto_0
    iget-object v2, p0, Lio/a/c$a;->c:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, "(key="

    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/a/c$a;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/a/c$a;->c:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ")"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
