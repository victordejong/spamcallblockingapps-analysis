.class public final enum Lit/gmariotti/cardslib/library/view/listener/f$c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/gmariotti/cardslib/library/view/listener/f$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lit/gmariotti/cardslib/library/view/listener/f$c$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lit/gmariotti/cardslib/library/view/listener/f$c$a;

.field public static final enum ALPHA:Lit/gmariotti/cardslib/library/view/listener/f$c$a;

.field public static final enum TOPBOTTOM:Lit/gmariotti/cardslib/library/view/listener/f$c$a;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 358
    new-instance v0, Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    const-string v1, "ALPHA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lit/gmariotti/cardslib/library/view/listener/f$c$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lit/gmariotti/cardslib/library/view/listener/f$c$a;->ALPHA:Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    .line 359
    new-instance v1, Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    const-string v3, "TOPBOTTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lit/gmariotti/cardslib/library/view/listener/f$c$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lit/gmariotti/cardslib/library/view/listener/f$c$a;->TOPBOTTOM:Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 357
    sput-object v3, Lit/gmariotti/cardslib/library/view/listener/f$c$a;->$VALUES:[Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 363
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 364
    iput p3, p0, Lit/gmariotti/cardslib/library/view/listener/f$c$a;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lit/gmariotti/cardslib/library/view/listener/f$c$a;
    .locals 1

    .line 357
    const-class v0, Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    return-object p0
.end method

.method public static values()[Lit/gmariotti/cardslib/library/view/listener/f$c$a;
    .locals 1

    .line 357
    sget-object v0, Lit/gmariotti/cardslib/library/view/listener/f$c$a;->$VALUES:[Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    invoke-virtual {v0}, [Lit/gmariotti/cardslib/library/view/listener/f$c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lit/gmariotti/cardslib/library/view/listener/f$c$a;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 368
    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/f$c$a;->mValue:I

    return v0
.end method
