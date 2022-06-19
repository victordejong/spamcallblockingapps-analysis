.class public final enum Lit/gmariotti/cardslib/library/a/k$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lit/gmariotti/cardslib/library/a/k$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lit/gmariotti/cardslib/library/a/k$a;

.field public static final enum CARD:Lit/gmariotti/cardslib/library/a/k$a;

.field public static final enum HEADER:Lit/gmariotti/cardslib/library/a/k$a;

.field public static final enum MAIN_CONTENT:Lit/gmariotti/cardslib/library/a/k$a;

.field public static final enum THUMBNAIL:Lit/gmariotti/cardslib/library/a/k$a;


# instance fields
.field mElement:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 84
    new-instance v0, Lit/gmariotti/cardslib/library/a/k$a;

    const-string v1, "CARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lit/gmariotti/cardslib/library/a/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lit/gmariotti/cardslib/library/a/k$a;->CARD:Lit/gmariotti/cardslib/library/a/k$a;

    .line 85
    new-instance v1, Lit/gmariotti/cardslib/library/a/k$a;

    const-string v3, "HEADER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lit/gmariotti/cardslib/library/a/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lit/gmariotti/cardslib/library/a/k$a;->HEADER:Lit/gmariotti/cardslib/library/a/k$a;

    .line 86
    new-instance v3, Lit/gmariotti/cardslib/library/a/k$a;

    const-string v5, "THUMBNAIL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lit/gmariotti/cardslib/library/a/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lit/gmariotti/cardslib/library/a/k$a;->THUMBNAIL:Lit/gmariotti/cardslib/library/a/k$a;

    .line 87
    new-instance v5, Lit/gmariotti/cardslib/library/a/k$a;

    const-string v7, "MAIN_CONTENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lit/gmariotti/cardslib/library/a/k$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lit/gmariotti/cardslib/library/a/k$a;->MAIN_CONTENT:Lit/gmariotti/cardslib/library/a/k$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lit/gmariotti/cardslib/library/a/k$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 82
    sput-object v7, Lit/gmariotti/cardslib/library/a/k$a;->$VALUES:[Lit/gmariotti/cardslib/library/a/k$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput p3, p0, Lit/gmariotti/cardslib/library/a/k$a;->mElement:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lit/gmariotti/cardslib/library/a/k$a;
    .locals 1

    .line 82
    const-class v0, Lit/gmariotti/cardslib/library/a/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lit/gmariotti/cardslib/library/a/k$a;

    return-object p0
.end method

.method public static values()[Lit/gmariotti/cardslib/library/a/k$a;
    .locals 1

    .line 82
    sget-object v0, Lit/gmariotti/cardslib/library/a/k$a;->$VALUES:[Lit/gmariotti/cardslib/library/a/k$a;

    invoke-virtual {v0}, [Lit/gmariotti/cardslib/library/a/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lit/gmariotti/cardslib/library/a/k$a;

    return-object v0
.end method
