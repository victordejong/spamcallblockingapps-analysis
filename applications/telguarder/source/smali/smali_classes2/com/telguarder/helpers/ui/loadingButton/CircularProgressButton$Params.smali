.class Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;
.super Ljava/lang/Object;
.source "CircularProgressButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Params"
.end annotation


# instance fields
.field private mDoneColor:I

.field private mDrawables:[Landroid/graphics/drawable/Drawable;

.field private mFinalCornerRadius:F

.field private mInitialCornerRadius:F

.field private mInitialHeight:Ljava/lang/Integer;

.field private mInitialWidth:I

.field private mPaddingProgress:Ljava/lang/Float;

.field private mSpinningBarColor:I

.field private mSpinningBarWidth:F

.field private mText:Ljava/lang/String;

.field final synthetic this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;


# direct methods
.method private constructor <init>(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->this$0:Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$1;)V
    .locals 0

    .line 426
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;-><init>(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton;)V

    return-void
.end method

.method static synthetic access$100(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)Ljava/lang/Float;
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mPaddingProgress:Ljava/lang/Float;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)I
    .locals 0

    .line 426
    iget p0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mInitialWidth:I

    return p0
.end method

.method static synthetic access$1002(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;I)I
    .locals 0

    .line 426
    iput p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mInitialWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mPaddingProgress:Ljava/lang/Float;

    return-object p1
.end method

.method static synthetic access$200(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)F
    .locals 0

    .line 426
    iget p0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mInitialCornerRadius:F

    return p0
.end method

.method static synthetic access$202(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;F)F
    .locals 0

    .line 426
    iput p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mInitialCornerRadius:F

    return p1
.end method

.method static synthetic access$300(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)F
    .locals 0

    .line 426
    iget p0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mFinalCornerRadius:F

    return p0
.end method

.method static synthetic access$302(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;F)F
    .locals 0

    .line 426
    iput p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mFinalCornerRadius:F

    return p1
.end method

.method static synthetic access$400(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)F
    .locals 0

    .line 426
    iget p0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mSpinningBarWidth:F

    return p0
.end method

.method static synthetic access$402(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;F)F
    .locals 0

    .line 426
    iput p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mSpinningBarWidth:F

    return p1
.end method

.method static synthetic access$500(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)I
    .locals 0

    .line 426
    iget p0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mSpinningBarColor:I

    return p0
.end method

.method static synthetic access$502(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;I)I
    .locals 0

    .line 426
    iput p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mSpinningBarColor:I

    return p1
.end method

.method static synthetic access$600(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)Ljava/lang/String;
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)[Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mDrawables:[Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$702(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;[Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mDrawables:[Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$802(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;I)I
    .locals 0

    .line 426
    iput p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mDoneColor:I

    return p1
.end method

.method static synthetic access$900(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;)Ljava/lang/Integer;
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mInitialHeight:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$902(Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/telguarder/helpers/ui/loadingButton/CircularProgressButton$Params;->mInitialHeight:Ljava/lang/Integer;

    return-object p1
.end method
