.class public final synthetic Ljavax/validation/-$$Lambda$ConstraintViolationException$yl4fKTbH-GKbNeGNHoi4iTSEUR4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Ljavax/validation/-$$Lambda$ConstraintViolationException$yl4fKTbH-GKbNeGNHoi4iTSEUR4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljavax/validation/-$$Lambda$ConstraintViolationException$yl4fKTbH-GKbNeGNHoi4iTSEUR4;

    invoke-direct {v0}, Ljavax/validation/-$$Lambda$ConstraintViolationException$yl4fKTbH-GKbNeGNHoi4iTSEUR4;-><init>()V

    sput-object v0, Ljavax/validation/-$$Lambda$ConstraintViolationException$yl4fKTbH-GKbNeGNHoi4iTSEUR4;->INSTANCE:Ljavax/validation/-$$Lambda$ConstraintViolationException$yl4fKTbH-GKbNeGNHoi4iTSEUR4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljavax/validation/c;

    invoke-static {p1}, Ljavax/validation/ConstraintViolationException;->lambda$yl4fKTbH-GKbNeGNHoi4iTSEUR4(Ljavax/validation/c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
