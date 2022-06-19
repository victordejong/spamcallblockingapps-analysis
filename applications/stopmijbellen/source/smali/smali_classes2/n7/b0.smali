.class public enum Ln7/b0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln7/b0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Ln7/b0;

.field public static final enum c:Ln7/b0;

.field public static final d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ln7/b0;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic e:[Ln7/b0;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Ln7/b0;

    const-string v1, "HTTP_1_0"

    const/4 v2, 0x0

    const-string v3, "http/1.0"

    invoke-direct {v0, v1, v2, v3}, Ln7/b0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ln7/b0;->b:Ln7/b0;

    .line 2
    new-instance v1, Ln7/b0;

    const-string v4, "HTTP_1_1"

    const/4 v5, 0x1

    const-string v6, "http/1.1"

    invoke-direct {v1, v4, v5, v6}, Ln7/b0;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ln7/b0;->c:Ln7/b0;

    .line 3
    new-instance v4, Ln7/b0$a;

    const-string v7, "SPDY_3"

    const/4 v8, 0x2

    const-string v9, "spdy/3.1"

    invoke-direct {v4, v7, v8, v9}, Ln7/b0$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    new-instance v7, Ln7/b0$b;

    const-string v10, "HTTP_2"

    const/4 v11, 0x3

    const-string v12, "h2-13"

    invoke-direct {v7, v10, v11, v12}, Ln7/b0$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v10, 0x4

    new-array v10, v10, [Ln7/b0;

    aput-object v0, v10, v2

    aput-object v1, v10, v5

    aput-object v4, v10, v8

    aput-object v7, v10, v11

    .line 5
    sput-object v10, Ln7/b0;->e:[Ln7/b0;

    .line 6
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Ln7/b0;->d:Ljava/util/Hashtable;

    .line 7
    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v2, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v2, v9, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v2, v12, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Ln7/b0;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ln7/b0$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Ln7/b0;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ln7/b0;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Ln7/b0;->d:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln7/b0;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Ln7/b0;
    .locals 1

    .line 1
    const-class v0, Ln7/b0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln7/b0;

    return-object p0
.end method

.method public static values()[Ln7/b0;
    .locals 1

    .line 1
    sget-object v0, Ln7/b0;->e:[Ln7/b0;

    invoke-virtual {v0}, [Ln7/b0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln7/b0;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln7/b0;->a:Ljava/lang/String;

    return-object v0
.end method
