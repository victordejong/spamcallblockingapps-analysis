.class public Lcom/facebook/ads/redexgen/X/Oj;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Q7;
.implements Lcom/facebook/ads/redexgen/X/PD;
.implements Lcom/facebook/ads/redexgen/X/Q5;


# static fields
.field public static A0D:[Ljava/lang/String;

.field public static final A0E:Lcom/facebook/ads/redexgen/X/Kl;

.field public static final A0F:Lcom/facebook/ads/redexgen/X/KP;

.field public static final A0G:Lcom/facebook/ads/redexgen/X/KL;

.field public static final A0H:Lcom/facebook/ads/redexgen/X/K6;

.field public static final A0I:Lcom/facebook/ads/redexgen/X/K5;

.field public static final A0J:Lcom/facebook/ads/redexgen/X/K2;

.field public static final A0K:Lcom/facebook/ads/redexgen/X/Jz;

.field public static final A0L:Lcom/facebook/ads/redexgen/X/Ju;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/JK;

.field public A02:Lcom/facebook/ads/redexgen/X/PH;

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:Landroid/os/Handler;

.field public final A07:Landroid/os/Handler;

.field public final A08:Landroid/view/View$OnTouchListener;

.field public final A09:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A0A:Lcom/facebook/ads/redexgen/X/9F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9F<",
            "Lcom/facebook/ads/redexgen/X/9G;",
            "Lcom/facebook/ads/redexgen/X/9E;",
            ">;"
        }
    .end annotation
.end field

.field public final A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/PK;",
            ">;"
        }
    .end annotation
.end field

.field public final A0C:Lcom/facebook/ads/redexgen/X/Q4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 47159
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oj;->A0I()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/KL;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/KL;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A0G:Lcom/facebook/ads/redexgen/X/KL;

    .line 47160
    new-instance v0, Lcom/facebook/ads/redexgen/X/Kl;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Kl;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A0E:Lcom/facebook/ads/redexgen/X/Kl;

    .line 47161
    new-instance v0, Lcom/facebook/ads/redexgen/X/K6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/K6;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A0H:Lcom/facebook/ads/redexgen/X/K6;

    .line 47162
    new-instance v0, Lcom/facebook/ads/redexgen/X/K5;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/K5;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A0I:Lcom/facebook/ads/redexgen/X/K5;

    .line 47163
    new-instance v0, Lcom/facebook/ads/redexgen/X/KP;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/KP;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A0F:Lcom/facebook/ads/redexgen/X/KP;

    .line 47164
    new-instance v0, Lcom/facebook/ads/redexgen/X/K2;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/K2;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A0J:Lcom/facebook/ads/redexgen/X/K2;

    .line 47165
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ju;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ju;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A0L:Lcom/facebook/ads/redexgen/X/Ju;

    .line 47166
    new-instance v0, Lcom/facebook/ads/redexgen/X/Jz;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Jz;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A0K:Lcom/facebook/ads/redexgen/X/Jz;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 1

    .line 47167
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0B:Ljava/util/List;

    .line 47169
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A06:Landroid/os/Handler;

    .line 47170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A07:Landroid/os/Handler;

    .line 47171
    new-instance v0, Lcom/facebook/ads/redexgen/X/9F;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9F;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0A:Lcom/facebook/ads/redexgen/X/9F;

    .line 47172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A05:Z

    .line 47173
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:I

    .line 47174
    new-instance v0, Lcom/facebook/ads/redexgen/X/PB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PB;-><init>(Lcom/facebook/ads/redexgen/X/Oj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A08:Landroid/view/View$OnTouchListener;

    .line 47175
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47176
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Oj;->A0Q(Lcom/facebook/ads/redexgen/X/Wm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47177
    new-instance v0, Lcom/facebook/ads/redexgen/X/HL;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/HL;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    .line 47178
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oj;->A0G()V

    .line 47179
    return-void

    .line 47180
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/HK;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/HK;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47181
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0B:Ljava/util/List;

    .line 47183
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A06:Landroid/os/Handler;

    .line 47184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A07:Landroid/os/Handler;

    .line 47185
    new-instance v0, Lcom/facebook/ads/redexgen/X/9F;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9F;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0A:Lcom/facebook/ads/redexgen/X/9F;

    .line 47186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A05:Z

    .line 47187
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:I

    .line 47188
    new-instance v0, Lcom/facebook/ads/redexgen/X/PB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PB;-><init>(Lcom/facebook/ads/redexgen/X/Oj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A08:Landroid/view/View$OnTouchListener;

    .line 47189
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47190
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Oj;->A0Q(Lcom/facebook/ads/redexgen/X/Wm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47191
    new-instance v0, Lcom/facebook/ads/redexgen/X/HL;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/HL;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    .line 47192
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oj;->A0G()V

    .line 47193
    return-void

    .line 47194
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/HK;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/HK;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 47195
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0B:Ljava/util/List;

    .line 47197
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A06:Landroid/os/Handler;

    .line 47198
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A07:Landroid/os/Handler;

    .line 47199
    new-instance v0, Lcom/facebook/ads/redexgen/X/9F;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9F;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0A:Lcom/facebook/ads/redexgen/X/9F;

    .line 47200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A05:Z

    .line 47201
    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:I

    .line 47202
    new-instance v0, Lcom/facebook/ads/redexgen/X/PB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PB;-><init>(Lcom/facebook/ads/redexgen/X/Oj;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A08:Landroid/view/View$OnTouchListener;

    .line 47203
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    .line 47204
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Oj;->A0Q(Lcom/facebook/ads/redexgen/X/Wm;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47205
    new-instance v0, Lcom/facebook/ads/redexgen/X/HL;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HL;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    .line 47206
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oj;->A0G()V

    .line 47207
    return-void

    .line 47208
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/HK;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HK;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    goto :goto_0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Oj;)I
    .locals 0

    .line 47209
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:I

    return p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Oj;)Landroid/os/Handler;
    .locals 0

    .line 47210
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A06:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 0

    .line 47211
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Oj;)Lcom/facebook/ads/redexgen/X/9F;
    .locals 0

    .line 47212
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0A:Lcom/facebook/ads/redexgen/X/9F;

    return-object p0
.end method

.method public static synthetic A0B()Lcom/facebook/ads/redexgen/X/Kl;
    .locals 1

    .line 47213
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A0E:Lcom/facebook/ads/redexgen/X/Kl;

    return-object v0
.end method

.method public static synthetic A0C()Lcom/facebook/ads/redexgen/X/KP;
    .locals 1

    .line 47214
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A0F:Lcom/facebook/ads/redexgen/X/KP;

    return-object v0
.end method

.method public static synthetic A0D()Lcom/facebook/ads/redexgen/X/KL;
    .locals 1

    .line 47215
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A0G:Lcom/facebook/ads/redexgen/X/KL;

    return-object v0
.end method

.method public static synthetic A0E()Lcom/facebook/ads/redexgen/X/K6;
    .locals 1

    .line 47216
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A0H:Lcom/facebook/ads/redexgen/X/K6;

    return-object v0
.end method

.method public static synthetic A0F()Lcom/facebook/ads/redexgen/X/K5;
    .locals 1

    .line 47217
    sget-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A0I:Lcom/facebook/ads/redexgen/X/K5;

    return-object v0
.end method

.method private A0G()V
    .locals 3

    .line 47218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2q()V

    .line 47219
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Q4;->setRequestedVolume(F)V

    .line 47220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Q4;->setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 47221
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Oj;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PH;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/PH;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/Q4;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A02:Lcom/facebook/ads/redexgen/X/PH;

    .line 47222
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47223
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 47224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A02:Lcom/facebook/ads/redexgen/X/PH;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Oj;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A08:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Oj;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 47226
    return-void
.end method

.method private A0H()V
    .locals 4

    .line 47227
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Oj;->A06:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/ads/redexgen/X/PN;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/PN;-><init>(Lcom/facebook/ads/redexgen/X/Oj;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:I

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47228
    return-void
.end method

.method public static A0I()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3L6CoO6YtrcW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MjcsiBOYcGfrGyZBxeZgAjKXsDYhFJK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NbVxNqWnj3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Ob7MM92eIAC3XgmL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "XSQst8sM3v9Waw60ED5t21eOsn1IQUtw"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wvdS5a619fbySZdqvbmzcB7w"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WLvo7626w9dzVwCTBg7InBeeg1a7HKE3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "kYDrs41aRZaYTR0SA8npQuCfjZz7Tio6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Oj;->A0D:[Ljava/lang/String;

    return-void
.end method

.method private final A0J()V
    .locals 6

    .line 47229
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/PK;

    .line 47230
    .local v0, "plugin":Lcom/facebook/ads/redexgen/X/PK;
    instance-of v3, v4, Lcom/facebook/ads/redexgen/X/Lg;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Oj;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Oj;->A0D:[Ljava/lang/String;

    const-string v1, "f6iKlyOeYddBSkQQnaXOCc7KzH8j"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 47231
    move-object v0, v4

    check-cast v0, Lcom/facebook/ads/redexgen/X/Lg;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0O(Lcom/facebook/ads/redexgen/X/Lg;)V

    .line 47232
    :cond_1
    invoke-interface {v4, p0}, Lcom/facebook/ads/redexgen/X/PK;->A8M(Lcom/facebook/ads/redexgen/X/Oj;)V

    .line 47233
    .end local v0    # "plugin":Lcom/facebook/ads/redexgen/X/PK;
    goto :goto_0

    .line 47234
    :cond_2
    return-void
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/JJ;)V
    .locals 2

    .line 47235
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A01:Lcom/facebook/ads/redexgen/X/JK;

    if-nez v1, :cond_0

    .line 47236
    return-void

    .line 47237
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 47238
    return-void
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/Oj;)V
    .locals 0

    .line 47239
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oj;->A0H()V

    return-void
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/Oj;Lcom/facebook/ads/redexgen/X/JJ;)V
    .locals 0

    .line 47240
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Oj;->A0K(Lcom/facebook/ads/redexgen/X/JJ;)V

    return-void
.end method

.method private A0N(Lcom/facebook/ads/redexgen/X/PK;)V
    .locals 1

    .line 47241
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/Lg;

    if-eqz v0, :cond_0

    .line 47242
    move-object v0, p1

    check-cast v0, Lcom/facebook/ads/redexgen/X/Lg;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0P(Lcom/facebook/ads/redexgen/X/Lg;)V

    .line 47243
    :cond_0
    invoke-interface {p1, p0}, Lcom/facebook/ads/redexgen/X/PK;->AEQ(Lcom/facebook/ads/redexgen/X/Oj;)V

    .line 47244
    return-void
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/Lg;)V
    .locals 1

    .line 47245
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Lg;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 47246
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/7Z;

    if-eqz v0, :cond_1

    .line 47247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A02:Lcom/facebook/ads/redexgen/X/PH;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PH;->A01(Lcom/facebook/ads/redexgen/X/Lg;)V

    .line 47248
    :cond_0
    :goto_0
    return-void

    .line 47249
    :cond_1
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Oj;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/Lg;)V
    .locals 1

    .line 47250
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/7Z;

    if-eqz v0, :cond_0

    .line 47251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A02:Lcom/facebook/ads/redexgen/X/PH;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PH;->A02(Lcom/facebook/ads/redexgen/X/Lg;)V

    .line 47252
    :goto_0
    return-void

    .line 47253
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    goto :goto_0
.end method

.method private A0Q(Lcom/facebook/ads/redexgen/X/Wm;)Z
    .locals 1

    .line 47254
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pt;->A03()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/J4;->A1s(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic A0R(Lcom/facebook/ads/redexgen/X/Oj;)Z
    .locals 0

    .line 47255
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A03:Z

    return p0
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/Oj;Z)Z
    .locals 0

    .line 47256
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A03:Z

    return p1
.end method


# virtual methods
.method public final A0T()V
    .locals 2

    .line 47257
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Q4;->setVideoStateChangeListener(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 47258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->destroy()V

    .line 47259
    return-void
.end method

.method public final A0U()V
    .locals 1

    .line 47260
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oj;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47261
    return-void

    .line 47262
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->A7V()V

    .line 47263
    return-void
.end method

.method public final A0V()V
    .locals 2

    .line 47264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/PK;

    .line 47265
    .local v0, "plugin":Lcom/facebook/ads/redexgen/X/PK;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0N(Lcom/facebook/ads/redexgen/X/PK;)V

    .line 47266
    .end local v0    # "plugin":Lcom/facebook/ads/redexgen/X/PK;
    goto :goto_0

    .line 47267
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47268
    return-void
.end method

.method public final A0W(I)V
    .locals 2

    .line 47269
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A06:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q4;->seekTo(I)V

    .line 47271
    return-void
.end method

.method public final A0X(I)V
    .locals 1

    .line 47272
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q4;->AEE(I)V

    .line 47273
    return-void
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/PF;)V
    .locals 2

    .line 47274
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A07:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ok;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ok;-><init>(Lcom/facebook/ads/redexgen/X/Oj;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47275
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PF;->A02()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Q4;->AE2(I)V

    .line 47276
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/PJ;I)V
    .locals 3

    .line 47277
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A03:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->getState()Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A06:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_0

    .line 47278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A03:Z

    .line 47279
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Q4;->AE7(Lcom/facebook/ads/redexgen/X/PJ;I)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Oj;->A0D:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x34

    if-eq v1, v0, :cond_1

    .line 47280
    sget-object v2, Lcom/facebook/ads/redexgen/X/Oj;->A0D:[Ljava/lang/String;

    const-string v1, "hMpnI8E"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/PK;)V
    .locals 1

    .line 47281
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47282
    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/PK;)V
    .locals 1

    .line 47283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47284
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Oj;->A0N(Lcom/facebook/ads/redexgen/X/PK;)V

    .line 47285
    return-void
.end method

.method public final A0c(ZI)V
    .locals 1

    .line 47286
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oj;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47287
    return-void

    .line 47288
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Q4;->ACK(ZI)V

    .line 47289
    return-void
.end method

.method public final A0d(ZZI)V
    .locals 0

    .line 47290
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/Oj;->A05:Z

    .line 47291
    invoke-virtual {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/Oj;->A0c(ZI)V

    .line 47292
    return-void
.end method

.method public final A0e()Z
    .locals 1

    .line 47293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->A7f()Z

    move-result v0

    return v0
.end method

.method public final A0f()Z
    .locals 2

    .line 47294
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oj;->getVolume()F

    move-result v1

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0g()Z
    .locals 2

    .line 47295
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oj;->getState()Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A05:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0h()Z
    .locals 1

    .line 47296
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oj;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->A8A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0i()Z
    .locals 2

    .line 47297
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oj;->getState()Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Q6;->A0A:Lcom/facebook/ads/redexgen/X/Q6;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A83()Z
    .locals 1

    .line 47298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0Q(Lcom/facebook/ads/redexgen/X/Wm;)Z

    move-result v0

    return v0
.end method

.method public final A86()Z
    .locals 1

    .line 47299
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A04:Z

    return v0
.end method

.method public final AAk()V
    .locals 2

    .line 47300
    const/4 v1, 0x1

    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0c(ZI)V

    .line 47301
    return-void
.end method

.method public final AAl()V
    .locals 2

    .line 47302
    sget-object v1, Lcom/facebook/ads/redexgen/X/PJ;->A05:Lcom/facebook/ads/redexgen/X/PJ;

    const/4 v0, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0Z(Lcom/facebook/ads/redexgen/X/PJ;I)V

    .line 47303
    return-void
.end method

.method public final ABZ(II)V
    .locals 2

    .line 47304
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A07:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/P8;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/P8;-><init>(Lcom/facebook/ads/redexgen/X/Oj;II)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47305
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oj;->A0H()V

    .line 47306
    return-void
.end method

.method public final AC8(Lcom/facebook/ads/redexgen/X/Q6;)V
    .locals 4

    .line 47307
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oj;->getCurrentPositionInMillis()I

    move-result v3

    .line 47308
    .local p0, "currentPositionMS":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oj;->getDuration()I

    move-result v2

    .line 47309
    .local p1, "duration":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A07:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PC;

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/facebook/ads/redexgen/X/PC;-><init>(Lcom/facebook/ads/redexgen/X/Oj;Lcom/facebook/ads/redexgen/X/Q6;II)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47310
    return-void
.end method

.method public getCurrentPositionInMillis()I
    .locals 1

    .line 47311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 47312
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->getDuration()I

    move-result v0

    return v0
.end method

.method public getEventBus()Lcom/facebook/ads/redexgen/X/9F;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/9F<",
            "Lcom/facebook/ads/redexgen/X/9G;",
            "Lcom/facebook/ads/redexgen/X/9E;",
            ">;"
        }
    .end annotation

    .line 47313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0A:Lcom/facebook/ads/redexgen/X/9F;

    return-object v0
.end method

.method public getInitialBufferTime()J
    .locals 2

    .line 47314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->getInitialBufferTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()Lcom/facebook/ads/redexgen/X/Q6;
    .locals 1

    .line 47315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->getState()Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v0

    return-object v0
.end method

.method public getStateHandler()Landroid/os/Handler;
    .locals 1

    .line 47316
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A07:Landroid/os/Handler;

    return-object v0
.end method

.method public getTextureView()Landroid/view/TextureView;
    .locals 1

    .line 47317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    check-cast v0, Landroid/view/TextureView;

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 47318
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoProgressReportIntervalMs()I
    .locals 1

    .line 47319
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:I

    return v0
.end method

.method public getVideoStartReason()Lcom/facebook/ads/redexgen/X/PJ;
    .locals 1

    .line 47320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->getStartReason()Lcom/facebook/ads/redexgen/X/PJ;

    move-result-object v0

    return-object v0
.end method

.method public getVideoView()Landroid/view/View;
    .locals 1

    .line 47321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A02:Lcom/facebook/ads/redexgen/X/PH;

    return-object v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 47322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 47323
    return-object p0
.end method

.method public getVolume()F
    .locals 1

    .line 47324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Q4;->getVolume()F

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 47325
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0A:Lcom/facebook/ads/redexgen/X/9F;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A0K:Lcom/facebook/ads/redexgen/X/Jz;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A02(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 47326
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 47327
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 47328
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0A:Lcom/facebook/ads/redexgen/X/9F;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A0L:Lcom/facebook/ads/redexgen/X/Ju;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A02(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 47329
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 47330
    return-void
.end method

.method public setControlsAnchorView(Landroid/view/View;)V
    .locals 1

    .line 47331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    if-eqz v0, :cond_0

    .line 47332
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q4;->setControlsAnchorView(Landroid/view/View;)V

    .line 47333
    :cond_0
    return-void
.end method

.method public setFunnelLoggingHandler(Lcom/facebook/ads/redexgen/X/JK;)V
    .locals 0

    .line 47334
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A01:Lcom/facebook/ads/redexgen/X/JK;

    .line 47335
    return-void
.end method

.method public setIsFullScreen(Z)V
    .locals 1

    .line 47336
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A04:Z

    .line 47337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q4;->setFullScreen(Z)V

    .line 47338
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 47339
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47340
    return-void
.end method

.method public setVideoMPD(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q4;->setVideoMPD(Ljava/lang/String;)V

    .line 47342
    return-void
.end method

.method public setVideoProgressReportIntervalMs(I)V
    .locals 0

    .line 47343
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Oj;->A00:I

    .line 47344
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47345
    if-nez p1, :cond_0

    .line 47346
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oj;->A0V()V

    .line 47347
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A03:Z

    .line 47348
    return-void

    .line 47349
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Oj;->A0J()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Oj;->A0D:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 47350
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Oj;->A0D:[Ljava/lang/String;

    const-string v1, "2vtziZXFfU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q4;->setup(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/0R;->A2x(Ljava/lang/String;)V

    .line 47352
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Oj;->setVideoURI(Landroid/net/Uri;)V

    .line 47353
    return-void

    .line 47354
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVolume(F)V
    .locals 2

    .line 47355
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 47356
    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0c:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0K(Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 47357
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A31()V

    .line 47358
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A0C:Lcom/facebook/ads/redexgen/X/Q4;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Q4;->setRequestedVolume(F)V

    .line 47359
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Oj;->A0J:Lcom/facebook/ads/redexgen/X/K2;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9F;->A02(Lcom/facebook/ads/redexgen/X/9E;)V

    .line 47360
    return-void

    .line 47361
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0b:Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0K(Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 47362
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Oj;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A30()V

    goto :goto_0
.end method
