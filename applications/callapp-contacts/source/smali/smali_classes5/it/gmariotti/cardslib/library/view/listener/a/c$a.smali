.class public final enum Lit/gmariotti/cardslib/library/view/listener/a/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/listener/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lit/gmariotti/cardslib/library/view/listener/a/c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lit/gmariotti/cardslib/library/view/listener/a/c$a;

.field public static final enum BOTH:Lit/gmariotti/cardslib/library/view/listener/a/c$a;

.field public static final enum LEFT:Lit/gmariotti/cardslib/library/view/listener/a/c$a;

.field public static final enum RIGHT:Lit/gmariotti/cardslib/library/view/listener/a/c$a;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 45
    new-instance v0, Lit/gmariotti/cardslib/library/view/listener/a/c$a;

    const-string v1, "BOTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lit/gmariotti/cardslib/library/view/listener/a/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lit/gmariotti/cardslib/library/view/listener/a/c$a;->BOTH:Lit/gmariotti/cardslib/library/view/listener/a/c$a;

    .line 46
    new-instance v1, Lit/gmariotti/cardslib/library/view/listener/a/c$a;

    const-string v3, "LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lit/gmariotti/cardslib/library/view/listener/a/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lit/gmariotti/cardslib/library/view/listener/a/c$a;->LEFT:Lit/gmariotti/cardslib/library/view/listener/a/c$a;

    .line 47
    new-instance v3, Lit/gmariotti/cardslib/library/view/listener/a/c$a;

    const-string v5, "RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lit/gmariotti/cardslib/library/view/listener/a/c$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lit/gmariotti/cardslib/library/view/listener/a/c$a;->RIGHT:Lit/gmariotti/cardslib/library/view/listener/a/c$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lit/gmariotti/cardslib/library/view/listener/a/c$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 44
    sput-object v5, Lit/gmariotti/cardslib/library/view/listener/a/c$a;->$VALUES:[Lit/gmariotti/cardslib/library/view/listener/a/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lit/gmariotti/cardslib/library/view/listener/a/c$a;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lit/gmariotti/cardslib/library/view/listener/a/c$a;
    .locals 1

    .line 44
    const-class v0, Lit/gmariotti/cardslib/library/view/listener/a/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lit/gmariotti/cardslib/library/view/listener/a/c$a;

    return-object p0
.end method

.method public static values()[Lit/gmariotti/cardslib/library/view/listener/a/c$a;
    .locals 1

    .line 44
    sget-object v0, Lit/gmariotti/cardslib/library/view/listener/a/c$a;->$VALUES:[Lit/gmariotti/cardslib/library/view/listener/a/c$a;

    invoke-virtual {v0}, [Lit/gmariotti/cardslib/library/view/listener/a/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lit/gmariotti/cardslib/library/view/listener/a/c$a;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 56
    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/a/c$a;->mValue:I

    return v0
.end method
