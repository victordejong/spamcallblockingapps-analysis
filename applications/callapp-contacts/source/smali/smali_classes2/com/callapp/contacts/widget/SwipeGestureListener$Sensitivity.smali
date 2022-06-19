.class public final enum Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/SwipeGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sensitivity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

.field public static final enum HIGH:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

.field public static final enum LOW:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

.field public static final enum MEDIUM:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

.field private static final THRESHOLD:I


# instance fields
.field private final velocityThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 20
    new-instance v0, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    const/high16 v1, 0x42820000    # 65.0f

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v1

    float-to-int v1, v1

    const-string v2, "HIGH"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->HIGH:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    .line 21
    new-instance v1, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    const/high16 v2, 0x42e60000    # 115.0f

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v2

    float-to-int v2, v2

    const-string v4, "MEDIUM"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->MEDIUM:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    .line 22
    new-instance v2, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    const/high16 v4, 0x43250000    # 165.0f

    invoke-static {v4}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v4

    float-to-int v4, v4

    const-string v6, "LOW"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->LOW:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    .line 19
    sput-object v4, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->$VALUES:[Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    const/high16 v0, 0x42700000    # 60.0f

    .line 25
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->THRESHOLD:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->velocityThreshold:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;
    .locals 1

    .line 19
    const-class v0, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    return-object p0
.end method

.method public static values()[Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;
    .locals 1

    .line 19
    sget-object v0, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->$VALUES:[Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    invoke-virtual {v0}, [Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    return-object v0
.end method


# virtual methods
.method public final getThreshold()I
    .locals 1

    .line 32
    sget v0, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->THRESHOLD:I

    return v0
.end method

.method public final getVelocityThreshold()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->velocityThreshold:I

    return v0
.end method
