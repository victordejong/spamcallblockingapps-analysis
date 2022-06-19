.class public Lcom/hbb20/CountryCodePicker;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hbb20/CountryCodePicker$b;,
        Lcom/hbb20/CountryCodePicker$c;,
        Lcom/hbb20/CountryCodePicker$h;,
        Lcom/hbb20/CountryCodePicker$d;,
        Lcom/hbb20/CountryCodePicker$f;,
        Lcom/hbb20/CountryCodePicker$i;,
        Lcom/hbb20/CountryCodePicker$a;,
        Lcom/hbb20/CountryCodePicker$g;,
        Lcom/hbb20/CountryCodePicker$e;
    }
.end annotation


# static fields
.field static a:Ljava/lang/String; = "CCP"

.field private static aI:I = -0x1

.field private static aJ:I = 0x1

.field private static aK:I = 0x0

.field private static aL:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field static b:Ljava/lang/String; = "selectedCode"

.field static c:I = 0x5b


# instance fields
.field A:Z

.field B:Z

.field C:Z

.field D:Z

.field E:Z

.field F:Z

.field G:Z

.field H:Z

.field I:Z

.field J:Z

.field K:Z

.field L:Z

.field M:Z

.field N:Z

.field O:Z

.field P:Z

.field Q:Z

.field R:Lcom/hbb20/CountryCodePicker$g;

.field S:Ljava/lang/String;

.field T:I

.field U:I

.field V:I

.field W:Landroid/graphics/Typeface;

.field aA:I

.field aB:I

.field aC:I

.field aD:I

.field aE:I

.field aF:I

.field aG:F

.field aH:Landroid/view/View$OnClickListener;

.field private aM:Lcom/hbb20/c;

.field private aN:Lcom/hbb20/CountryCodePicker$f;

.field private aO:Lcom/hbb20/CountryCodePicker$h;

.field private aP:Lcom/hbb20/CountryCodePicker$d;

.field private aQ:Lcom/hbb20/b;

.field private aR:Landroid/view/View$OnClickListener;

.field aa:I

.field ab:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/a;",
            ">;"
        }
    .end annotation
.end field

.field ac:I

.field ad:Ljava/lang/String;

.field ae:I

.field af:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hbb20/a;",
            ">;"
        }
    .end annotation
.end field

.field ag:Ljava/lang/String;

.field ah:Ljava/lang/String;

.field ai:Lcom/hbb20/CountryCodePicker$e;

.field aj:Lcom/hbb20/CountryCodePicker$e;

.field ak:Z

.field al:Z

.field am:Z

.field an:Z

.field ao:Z

.field ap:Z

.field aq:Ljava/lang/String;

.field ar:Lcom/hbb20/g;

.field as:Z

.field at:Landroid/text/TextWatcher;

.field au:Z

.field av:Ljava/lang/String;

.field aw:I

.field ax:Z

.field ay:Lcom/hbb20/CountryCodePicker$c;

.field az:Lcom/hbb20/CountryCodePicker$b;

.field d:Ljava/lang/String;

.field e:I

.field f:Ljava/lang/String;

.field g:Landroid/content/Context;

.field h:Landroid/view/View;

.field i:Landroid/view/LayoutInflater;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/EditText;

.field l:Landroid/widget/RelativeLayout;

.field m:Landroid/widget/ImageView;

.field n:Landroid/widget/ImageView;

.field o:Landroid/widget/LinearLayout;

.field p:Landroid/widget/LinearLayout;

.field q:Lcom/hbb20/a;

.field public r:Lcom/hbb20/a;

.field s:Landroid/widget/RelativeLayout;

.field t:Lcom/hbb20/CountryCodePicker;

.field u:Lcom/hbb20/CountryCodePicker$i;

.field v:Ljava/lang/String;

.field w:I

.field x:Lcom/hbb20/CountryCodePicker$a;

.field y:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 155
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/hbb20/f;

    invoke-direct {v0}, Lcom/hbb20/f;-><init>()V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->aM:Lcom/hbb20/c;

    const-string v0, "CCP_PREF_FILE"

    .line 55
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->d:Ljava/lang/String;

    const-string v0, ""

    .line 73
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->v:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/hbb20/CountryCodePicker$a;->SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$a;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->x:Lcom/hbb20/CountryCodePicker$a;

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->z:Z

    .line 79
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->A:Z

    .line 80
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->B:Z

    .line 81
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->C:Z

    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->D:Z

    .line 83
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->E:Z

    .line 84
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->F:Z

    .line 85
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->G:Z

    .line 86
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->H:Z

    .line 87
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->I:Z

    .line 88
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->J:Z

    .line 89
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->K:Z

    .line 90
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->L:Z

    .line 91
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->M:Z

    .line 92
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->N:Z

    .line 93
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->O:Z

    .line 94
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->P:Z

    .line 95
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->Q:Z

    .line 96
    sget-object v2, Lcom/hbb20/CountryCodePicker$g;->MOBILE:Lcom/hbb20/CountryCodePicker$g;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->R:Lcom/hbb20/CountryCodePicker$g;

    const-string v2, "ccp_last_selection"

    .line 97
    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->S:Ljava/lang/String;

    const/16 v2, -0x63

    .line 98
    iput v2, p0, Lcom/hbb20/CountryCodePicker;->T:I

    .line 99
    iput v2, p0, Lcom/hbb20/CountryCodePicker;->U:I

    .line 104
    sget v2, Lcom/hbb20/CountryCodePicker;->aK:I

    iput v2, p0, Lcom/hbb20/CountryCodePicker;->ac:I

    .line 107
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->ae:I

    .line 111
    sget-object v2, Lcom/hbb20/CountryCodePicker$e;->ENGLISH:Lcom/hbb20/CountryCodePicker$e;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->ai:Lcom/hbb20/CountryCodePicker$e;

    .line 112
    sget-object v2, Lcom/hbb20/CountryCodePicker$e;->ENGLISH:Lcom/hbb20/CountryCodePicker$e;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->aj:Lcom/hbb20/CountryCodePicker$e;

    .line 114
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ak:Z

    .line 115
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->al:Z

    .line 116
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->am:Z

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->an:Z

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ao:Z

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ap:Z

    const-string v0, "notSet"

    .line 117
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->aq:Ljava/lang/String;

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->av:Ljava/lang/String;

    .line 124
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->aw:I

    .line 125
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ax:Z

    .line 131
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->aA:I

    .line 133
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->aF:I

    .line 137
    new-instance v1, Lcom/hbb20/CountryCodePicker$1;

    invoke-direct {v1, p0}, Lcom/hbb20/CountryCodePicker$1;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->aH:Landroid/view/View$OnClickListener;

    .line 156
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    .line 157
    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance v0, Lcom/hbb20/f;

    invoke-direct {v0}, Lcom/hbb20/f;-><init>()V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->aM:Lcom/hbb20/c;

    const-string v0, "CCP_PREF_FILE"

    .line 55
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->d:Ljava/lang/String;

    const-string v0, ""

    .line 73
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->v:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/hbb20/CountryCodePicker$a;->SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$a;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->x:Lcom/hbb20/CountryCodePicker$a;

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->z:Z

    .line 79
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->A:Z

    .line 80
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->B:Z

    .line 81
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->C:Z

    const/4 v1, 0x0

    .line 82
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->D:Z

    .line 83
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->E:Z

    .line 84
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->F:Z

    .line 85
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->G:Z

    .line 86
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->H:Z

    .line 87
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->I:Z

    .line 88
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->J:Z

    .line 89
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->K:Z

    .line 90
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->L:Z

    .line 91
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->M:Z

    .line 92
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->N:Z

    .line 93
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->O:Z

    .line 94
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->P:Z

    .line 95
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->Q:Z

    .line 96
    sget-object v2, Lcom/hbb20/CountryCodePicker$g;->MOBILE:Lcom/hbb20/CountryCodePicker$g;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->R:Lcom/hbb20/CountryCodePicker$g;

    const-string v2, "ccp_last_selection"

    .line 97
    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->S:Ljava/lang/String;

    const/16 v2, -0x63

    .line 98
    iput v2, p0, Lcom/hbb20/CountryCodePicker;->T:I

    .line 99
    iput v2, p0, Lcom/hbb20/CountryCodePicker;->U:I

    .line 104
    sget v2, Lcom/hbb20/CountryCodePicker;->aK:I

    iput v2, p0, Lcom/hbb20/CountryCodePicker;->ac:I

    .line 107
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->ae:I

    .line 111
    sget-object v2, Lcom/hbb20/CountryCodePicker$e;->ENGLISH:Lcom/hbb20/CountryCodePicker$e;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->ai:Lcom/hbb20/CountryCodePicker$e;

    .line 112
    sget-object v2, Lcom/hbb20/CountryCodePicker$e;->ENGLISH:Lcom/hbb20/CountryCodePicker$e;

    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->aj:Lcom/hbb20/CountryCodePicker$e;

    .line 114
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ak:Z

    .line 115
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->al:Z

    .line 116
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->am:Z

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->an:Z

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ao:Z

    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ap:Z

    const-string v0, "notSet"

    .line 117
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->aq:Ljava/lang/String;

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->av:Ljava/lang/String;

    .line 124
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->aw:I

    .line 125
    iput-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ax:Z

    .line 131
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->aA:I

    .line 133
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->aF:I

    .line 137
    new-instance v0, Lcom/hbb20/CountryCodePicker$1;

    invoke-direct {v0, p0}, Lcom/hbb20/CountryCodePicker$1;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->aH:Landroid/view/View$OnClickListener;

    .line 162
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    .line 163
    invoke-direct {p0, p2}, Lcom/hbb20/CountryCodePicker;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 167
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance p3, Lcom/hbb20/f;

    invoke-direct {p3}, Lcom/hbb20/f;-><init>()V

    iput-object p3, p0, Lcom/hbb20/CountryCodePicker;->aM:Lcom/hbb20/c;

    const-string p3, "CCP_PREF_FILE"

    .line 55
    iput-object p3, p0, Lcom/hbb20/CountryCodePicker;->d:Ljava/lang/String;

    const-string p3, ""

    .line 73
    iput-object p3, p0, Lcom/hbb20/CountryCodePicker;->v:Ljava/lang/String;

    .line 76
    sget-object p3, Lcom/hbb20/CountryCodePicker$a;->SIM_NETWORK_LOCALE:Lcom/hbb20/CountryCodePicker$a;

    iput-object p3, p0, Lcom/hbb20/CountryCodePicker;->x:Lcom/hbb20/CountryCodePicker$a;

    const/4 p3, 0x1

    .line 78
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->z:Z

    .line 79
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->A:Z

    .line 80
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->B:Z

    .line 81
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->C:Z

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->D:Z

    .line 83
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->E:Z

    .line 84
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->F:Z

    .line 85
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->G:Z

    .line 86
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->H:Z

    .line 87
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->I:Z

    .line 88
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->J:Z

    .line 89
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->K:Z

    .line 90
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->L:Z

    .line 91
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->M:Z

    .line 92
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->N:Z

    .line 93
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->O:Z

    .line 94
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->P:Z

    .line 95
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->Q:Z

    .line 96
    sget-object v1, Lcom/hbb20/CountryCodePicker$g;->MOBILE:Lcom/hbb20/CountryCodePicker$g;

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->R:Lcom/hbb20/CountryCodePicker$g;

    const-string v1, "ccp_last_selection"

    .line 97
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->S:Ljava/lang/String;

    const/16 v1, -0x63

    .line 98
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->T:I

    .line 99
    iput v1, p0, Lcom/hbb20/CountryCodePicker;->U:I

    .line 104
    sget v1, Lcom/hbb20/CountryCodePicker;->aK:I

    iput v1, p0, Lcom/hbb20/CountryCodePicker;->ac:I

    .line 107
    iput v0, p0, Lcom/hbb20/CountryCodePicker;->ae:I

    .line 111
    sget-object v1, Lcom/hbb20/CountryCodePicker$e;->ENGLISH:Lcom/hbb20/CountryCodePicker$e;

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->ai:Lcom/hbb20/CountryCodePicker$e;

    .line 112
    sget-object v1, Lcom/hbb20/CountryCodePicker$e;->ENGLISH:Lcom/hbb20/CountryCodePicker$e;

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->aj:Lcom/hbb20/CountryCodePicker$e;

    .line 114
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->ak:Z

    .line 115
    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->al:Z

    .line 116
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->am:Z

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->an:Z

    iput-boolean p3, p0, Lcom/hbb20/CountryCodePicker;->ao:Z

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ap:Z

    const-string p3, "notSet"

    .line 117
    iput-object p3, p0, Lcom/hbb20/CountryCodePicker;->aq:Ljava/lang/String;

    const/4 p3, 0x0

    .line 123
    iput-object p3, p0, Lcom/hbb20/CountryCodePicker;->av:Ljava/lang/String;

    .line 124
    iput v0, p0, Lcom/hbb20/CountryCodePicker;->aw:I

    .line 125
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ax:Z

    .line 131
    iput v0, p0, Lcom/hbb20/CountryCodePicker;->aA:I

    .line 133
    iput v0, p0, Lcom/hbb20/CountryCodePicker;->aF:I

    .line 137
    new-instance p3, Lcom/hbb20/CountryCodePicker$1;

    invoke-direct {p3, p0}, Lcom/hbb20/CountryCodePicker$1;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object p3, p0, Lcom/hbb20/CountryCodePicker;->aH:Landroid/view/View$OnClickListener;

    .line 168
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    .line 169
    invoke-direct {p0, p2}, Lcom/hbb20/CountryCodePicker;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/hbb20/CountryCodePicker;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/hbb20/CountryCodePicker;->aR:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    .line 681
    sget-object v0, Lcom/hbb20/CountryCodePicker$i;->LEFT:Lcom/hbb20/CountryCodePicker$i;

    iget v0, v0, Lcom/hbb20/CountryCodePicker$i;->enumIndex:I

    if-ne p1, v0, :cond_0

    .line 682
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->j:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    return-void

    .line 683
    :cond_0
    sget-object v0, Lcom/hbb20/CountryCodePicker$i;->CENTER:Lcom/hbb20/CountryCodePicker$i;

    iget v0, v0, Lcom/hbb20/CountryCodePicker$i;->enumIndex:I

    if-ne p1, v0, :cond_1

    .line 684
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->j:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    return-void

    .line 686
    :cond_1
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->j:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/view/LayoutInflater;

    if-eqz p1, :cond_0

    .line 208
    sget-object v0, Lcom/hbb20/CountryCodePicker;->aL:Ljava/lang/String;

    const-string v1, "layout_width"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->aq:Ljava/lang/String;

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->removeAllViewsInLayout()V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->aq:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->aq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->aq:Ljava/lang/String;

    const-string v2, "fill_parent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->aq:Ljava/lang/String;

    const-string v2, "match_parent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/view/LayoutInflater;

    sget v2, Lcom/hbb20/h$g;->layout_full_width_code_picker:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/view/View;

    goto :goto_0

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->i:Landroid/view/LayoutInflater;

    sget v2, Lcom/hbb20/h$g;->layout_code_picker:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/view/View;

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/view/View;

    sget v1, Lcom/hbb20/h$f;->textView_selectedCountry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->j:Landroid/widget/TextView;

    .line 219
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/view/View;

    sget v1, Lcom/hbb20/h$f;->countryCodeHolder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->l:Landroid/widget/RelativeLayout;

    .line 220
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/view/View;

    sget v1, Lcom/hbb20/h$f;->imageView_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/ImageView;

    .line 221
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/view/View;

    sget v1, Lcom/hbb20/h$f;->image_flag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/ImageView;

    .line 222
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/view/View;

    sget v1, Lcom/hbb20/h$f;->linear_flag_holder:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->p:Landroid/widget/LinearLayout;

    .line 223
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/view/View;

    sget v1, Lcom/hbb20/h$f;->linear_flag_border:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->o:Landroid/widget/LinearLayout;

    .line 224
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->h:Landroid/view/View;

    sget v1, Lcom/hbb20/h$f;->rlClickConsumer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->s:Landroid/widget/RelativeLayout;

    .line 225
    iput-object p0, p0, Lcom/hbb20/CountryCodePicker;->t:Lcom/hbb20/CountryCodePicker;

    if-eqz p1, :cond_3

    .line 227
    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodePicker;->b(Landroid/util/AttributeSet;)V

    .line 229
    :cond_3
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->s:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->aH:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 2071
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->C:Z

    .line 2072
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->t()V

    .line 2073
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2074
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->q:Lcom/hbb20/a;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/hbb20/a;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hbb20/a;",
            "Ljava/util/List<",
            "Lcom/hbb20/a;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1470
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/a;

    .line 17681
    iget-object v0, v0, Lcom/hbb20/a;->h:Ljava/lang/String;

    .line 18681
    iget-object v1, p0, Lcom/hbb20/a;->h:Ljava/lang/String;

    .line 1471
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static b(I)Lcom/hbb20/CountryCodePicker$e;
    .locals 1

    .line 1506
    invoke-static {}, Lcom/hbb20/CountryCodePicker$e;->values()[Lcom/hbb20/CountryCodePicker$e;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 1507
    invoke-static {}, Lcom/hbb20/CountryCodePicker$e;->values()[Lcom/hbb20/CountryCodePicker$e;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 1509
    :cond_0
    sget-object p0, Lcom/hbb20/CountryCodePicker$e;->ENGLISH:Lcom/hbb20/CountryCodePicker$e;

    return-object p0
.end method

.method static synthetic b(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/a;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->l()Lcom/hbb20/a;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 7

    .line 234
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/hbb20/h$h;->CountryCodePicker:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 238
    :try_start_0
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_showNameCode:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->z:Z

    .line 241
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_autoFormatNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ao:Z

    .line 244
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_showPhoneCode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->A:Z

    .line 247
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccpDialog_showPhoneCode:I

    iget-boolean v3, p0, Lcom/hbb20/CountryCodePicker;->A:Z

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->B:Z

    .line 250
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccpDialog_showNameCode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->M:Z

    .line 253
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccpDialog_showTitle:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->F:Z

    .line 256
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_useFlagEmoji:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->O:Z

    .line 259
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_useDummyEmojiForPreview:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->P:Z

    .line 262
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccpDialog_showFlag:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->G:Z

    .line 265
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccpDialog_initialScrollToSelection:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->N:Z

    .line 268
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_showFullName:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->D:Z

    .line 271
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccpDialog_showFastScroller:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->E:Z

    .line 274
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccpDialog_fastScroller_bubbleColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/hbb20/CountryCodePicker;->ae:I

    .line 277
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccpDialog_fastScroller_handleColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/hbb20/CountryCodePicker;->aA:I

    .line 280
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccpDialog_fastScroller_bubbleTextAppearance:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/hbb20/CountryCodePicker;->aF:I

    .line 283
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_autoDetectLanguage:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->am:Z

    .line 286
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_areaCodeDetectedCountry:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->L:Z

    .line 289
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_rememberLastSelection:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->K:Z

    .line 292
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_hintExampleNumber:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ap:Z

    .line 295
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_internationalFormattingOnly:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->Q:Z

    .line 298
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_padding:I

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/hbb20/h$d;->ccp_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/hbb20/CountryCodePicker;->w:I

    .line 299
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 302
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_hintExampleNumberType:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 303
    invoke-static {}, Lcom/hbb20/CountryCodePicker$g;->values()[Lcom/hbb20/CountryCodePicker$g;

    move-result-object v3

    aget-object v0, v3, v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->R:Lcom/hbb20/CountryCodePicker$g;

    .line 306
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_selectionMemoryTag:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->S:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "CCP_last_selection"

    .line 308
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->S:Ljava/lang/String;

    .line 312
    :cond_0
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_countryAutoDetectionPref:I

    const/16 v3, 0x7b

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 313
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hbb20/CountryCodePicker$a;->getPrefForValue(Ljava/lang/String;)Lcom/hbb20/CountryCodePicker$a;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->x:Lcom/hbb20/CountryCodePicker$a;

    .line 316
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_autoDetectCountry:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->an:Z

    .line 319
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_showArrow:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->I:Z

    .line 320
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->h()V

    .line 323
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccpDialog_showCloseIcon:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->J:Z

    .line 326
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_showFlag:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->a(Z)V

    .line 329
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccpDialog_keyboardAutoPopup:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDialogKeyboardAutoPopup(Z)V

    .line 333
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_defaultLanguage:I

    sget-object v3, Lcom/hbb20/CountryCodePicker$e;->ENGLISH:Lcom/hbb20/CountryCodePicker$e;

    invoke-virtual {v3}, Lcom/hbb20/CountryCodePicker$e;->ordinal()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 334
    invoke-static {v0}, Lcom/hbb20/CountryCodePicker;->b(I)Lcom/hbb20/CountryCodePicker$e;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->ai:Lcom/hbb20/CountryCodePicker$e;

    .line 335
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->j()V

    .line 338
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_customMasterCountries:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->ag:Ljava/lang/String;

    .line 339
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_excludedCountries:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->ah:Ljava/lang/String;

    .line 340
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->c()V

    .line 345
    :cond_1
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_countryPreference:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->ad:Ljava/lang/String;

    .line 347
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->b()V

    .line 352
    :cond_2
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_textGravity:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_textGravity:I

    sget v3, Lcom/hbb20/CountryCodePicker;->aK:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/hbb20/CountryCodePicker;->ac:I

    .line 355
    :cond_3
    iget v0, p0, Lcom/hbb20/CountryCodePicker;->ac:I

    invoke-direct {p0, v0}, Lcom/hbb20/CountryCodePicker;->a(I)V

    .line 359
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_defaultNameCode:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "IN"

    if-eqz v0, :cond_6

    .line 361
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 362
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 363
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v4

    iget-object v5, p0, Lcom/hbb20/CountryCodePicker;->f:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 365
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v4

    iget-object v5, p0, Lcom/hbb20/CountryCodePicker;->f:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object v0

    .line 2754
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    .line 366
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    goto :goto_0

    .line 369
    :cond_4
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/hbb20/a;->b(Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 371
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/hbb20/a;->b(Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object v0

    .line 3754
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    .line 372
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_7

    .line 378
    invoke-static {v3}, Lcom/hbb20/a;->b(Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object v0

    .line 4754
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    .line 379
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 385
    :cond_7
    :goto_2
    sget v4, Lcom/hbb20/h$h;->CountryCodePicker_ccp_defaultPhoneCode:I

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    if-nez v0, :cond_b

    if-eq v4, v5, :cond_b

    .line 387
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_9

    if-eq v4, v5, :cond_8

    .line 389
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v5

    iget-object v6, p0, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    invoke-static {v0, v5, v6, v4}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/util/List;I)Lcom/hbb20/a;

    move-result-object v0

    if-nez v0, :cond_8

    .line 390
    sget v4, Lcom/hbb20/CountryCodePicker;->c:I

    .line 392
    :cond_8
    invoke-virtual {p0, v4}, Lcom/hbb20/CountryCodePicker;->setDefaultCountryUsingPhoneCode(I)V

    .line 393
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    goto :goto_3

    .line 396
    :cond_9
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hbb20/a;->a(Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object v0

    if-nez v0, :cond_a

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/hbb20/CountryCodePicker;->c:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hbb20/a;->a(Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object v0

    .line 5754
    :cond_a
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    .line 401
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    .line 6750
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    if-nez v0, :cond_c

    .line 407
    invoke-static {v3}, Lcom/hbb20/a;->b(Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object v0

    .line 6754
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    .line 408
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->l()Lcom/hbb20/a;

    move-result-object v0

    if-nez v0, :cond_c

    .line 409
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    .line 7094
    :cond_c
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->an:Z

    if-eqz v0, :cond_d

    .line 415
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 416
    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->setAutoDetectedCountry(Z)V

    .line 420
    :cond_d
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->K:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_e

    .line 421
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->i()V

    .line 425
    :cond_e
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_arrowColor:I

    const/16 v3, -0x63

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 426
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setArrowColor(I)V

    .line 430
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 431
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_contentColor:I

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_4

    .line 433
    :cond_f
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_contentColor:I

    iget-object v4, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/hbb20/h$c;->defaultContentColor:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_4
    if-eq v0, v3, :cond_10

    .line 436
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setContentColor(I)V

    .line 441
    :cond_10
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 442
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_flagBorderColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_5

    .line 444
    :cond_11
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_flagBorderColor:I

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/hbb20/h$c;->defaultBorderFlagColor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    :goto_5
    if-eqz v0, :cond_12

    .line 447
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setFlagBorderColor(I)V

    .line 451
    :cond_12
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccpDialog_backgroundColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDialogBackgroundColor(I)V

    .line 452
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccpDialog_background:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDialogBackground(I)V

    .line 453
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccpDialog_textColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDialogTextColor(I)V

    .line 454
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccpDialog_searchEditTextTint:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDialogSearchEditTextTintColor(I)V

    .line 455
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccpDialog_cornerRadius:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setDialogCornerRaius(F)V

    .line 458
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_textSize:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-lez v0, :cond_13

    .line 460
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->j:Landroid/widget/TextView;

    int-to-float v4, v0

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 461
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setFlagSize(I)V

    .line 462
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setArrowSize(I)V

    .line 466
    :cond_13
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_arrowSize:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-lez v0, :cond_14

    .line 468
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setArrowSize(I)V

    .line 471
    :cond_14
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccpDialog_allowSearch:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->H:Z

    .line 472
    sget v0, Lcom/hbb20/h$h;->CountryCodePicker_ccp_clickable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setCcpClickable(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 485
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 483
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 485
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 486
    throw v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    .line 2270
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker;)Ljava/util/List;

    move-result-object v0

    .line 2271
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/a;

    .line 2272
    iget-object v1, v1, Lcom/hbb20/a;->h:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/b;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/hbb20/CountryCodePicker;->aQ:Lcom/hbb20/b;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 490
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->I:Z

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private i()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->S:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->setCountryForNameCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    .line 700
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->ai:Lcom/hbb20/CountryCodePicker$e;

    if-eqz v0, :cond_0

    .line 702
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->aj:Lcom/hbb20/CountryCodePicker$e;

    return-void

    .line 704
    :cond_0
    sget-object v0, Lcom/hbb20/CountryCodePicker$e;->ENGLISH:Lcom/hbb20/CountryCodePicker$e;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->aj:Lcom/hbb20/CountryCodePicker$e;

    return-void

    .line 8090
    :cond_1
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->am:Z

    if-eqz v0, :cond_4

    .line 708
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->k()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v0

    if-nez v0, :cond_3

    .line 9061
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->ai:Lcom/hbb20/CountryCodePicker$e;

    if-eqz v0, :cond_2

    .line 711
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->aj:Lcom/hbb20/CountryCodePicker$e;

    return-void

    .line 713
    :cond_2
    sget-object v0, Lcom/hbb20/CountryCodePicker$e;->ENGLISH:Lcom/hbb20/CountryCodePicker$e;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->aj:Lcom/hbb20/CountryCodePicker$e;

    return-void

    .line 716
    :cond_3
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->aj:Lcom/hbb20/CountryCodePicker$e;

    return-void

    .line 11061
    :cond_4
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->ai:Lcom/hbb20/CountryCodePicker$e;

    if-eqz v0, :cond_5

    .line 720
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->aj:Lcom/hbb20/CountryCodePicker$e;

    return-void

    .line 722
    :cond_5
    sget-object v0, Lcom/hbb20/CountryCodePicker$e;->ENGLISH:Lcom/hbb20/CountryCodePicker$e;

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->aj:Lcom/hbb20/CountryCodePicker$e;

    return-void
.end method

.method private k()Lcom/hbb20/CountryCodePicker$e;
    .locals 7

    .line 729
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 731
    invoke-static {}, Lcom/hbb20/CountryCodePicker$e;->values()[Lcom/hbb20/CountryCodePicker$e;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 732
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$e;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 734
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$e;->getCountry()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 735
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$e;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 738
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_2

    .line 739
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$e;->getScript()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 740
    invoke-virtual {v4}, Lcom/hbb20/CountryCodePicker$e;->getScript()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    :goto_1
    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private l()Lcom/hbb20/a;
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->q:Lcom/hbb20/a;

    if-nez v0, :cond_0

    .line 11750
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    .line 776
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->q:Lcom/hbb20/a;

    return-object v0
.end method

.method private m()V
    .locals 1

    .line 884
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->s()I

    move-result v0

    invoke-static {v0}, Lcom/hbb20/b;->a(I)Lcom/hbb20/b;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->aQ:Lcom/hbb20/b;

    return-void
.end method

.method private n()V
    .locals 4

    .line 891
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ap:Z

    if-eqz v0, :cond_4

    .line 893
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->v()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->o()Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 895
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16063
    iget-wide v2, v0, Lcom/google/i18n/phonenumbers/k$a;->b:J

    .line 895
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 897
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 900
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 903
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 912
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->v:Ljava/lang/String;

    .line 915
    :cond_3
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private o()Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;
    .locals 2

    .line 925
    sget-object v0, Lcom/hbb20/CountryCodePicker$3;->a:[I

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->R:Lcom/hbb20/CountryCodePicker$g;

    invoke-virtual {v1}, Lcom/hbb20/CountryCodePicker$g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 952
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object v0

    .line 950
    :pswitch_0
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object v0

    .line 947
    :pswitch_1
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->VOICEMAIL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object v0

    .line 945
    :pswitch_2
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->UAN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object v0

    .line 943
    :pswitch_3
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->PAGER:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object v0

    .line 941
    :pswitch_4
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->PERSONAL_NUMBER:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object v0

    .line 939
    :pswitch_5
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->VOIP:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object v0

    .line 937
    :pswitch_6
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->SHARED_COST:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object v0

    .line 935
    :pswitch_7
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->PREMIUM_RATE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object v0

    .line 933
    :pswitch_8
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->TOLL_FREE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object v0

    .line 931
    :pswitch_9
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object v0

    .line 929
    :pswitch_a
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->FIXED_LINE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object v0

    .line 927
    :pswitch_b
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$d;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private p()V
    .locals 6

    .line 968
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->q:Lcom/hbb20/a;

    if-eqz v1, :cond_4

    .line 969
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 970
    invoke-static {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 972
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->ar:Lcom/hbb20/g;

    if-eqz v1, :cond_0

    .line 973
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 976
    :cond_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->at:Landroid/text/TextWatcher;

    if-eqz v1, :cond_1

    .line 977
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 980
    :cond_1
    iget-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->ao:Z

    if-eqz v1, :cond_2

    .line 981
    new-instance v1, Lcom/hbb20/g;

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->g()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->s()I

    move-result v4

    iget-boolean v5, p0, Lcom/hbb20/CountryCodePicker;->Q:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/hbb20/g;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->ar:Lcom/hbb20/g;

    .line 982
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 986
    :cond_2
    iget-boolean v1, p0, Lcom/hbb20/CountryCodePicker;->L:Z

    if-eqz v1, :cond_3

    .line 987
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->q()Landroid/text/TextWatcher;

    move-result-object v1

    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->at:Landroid/text/TextWatcher;

    .line 988
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 992
    :cond_3
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 993
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 994
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_4
    if-nez v0, :cond_5

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateFormattingTextWatcher: EditText not registered "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 999
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateFormattingTextWatcher: selected country is null "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private q()Landroid/text/TextWatcher;
    .locals 1

    .line 1011
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->at:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    .line 1013
    new-instance v0, Lcom/hbb20/CountryCodePicker$2;

    invoke-direct {v0, p0}, Lcom/hbb20/CountryCodePicker$2;-><init>(Lcom/hbb20/CountryCodePicker;)V

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->at:Landroid/text/TextWatcher;

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->at:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private r()Ljava/lang/String;
    .locals 1

    .line 20750
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    .line 1650
    iget-object v0, v0, Lcom/hbb20/a;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private s()I
    .locals 1

    .line 22669
    :try_start_0
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->l()Lcom/hbb20/a;

    move-result-object v0

    iget-object v0, v0, Lcom/hbb20/a;->i:Ljava/lang/String;

    .line 1693
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1695
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private t()V
    .locals 2

    .line 2078
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->C:Z

    if-eqz v0, :cond_0

    .line 2079
    iget-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->O:Z

    if-nez v0, :cond_0

    .line 2082
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 2085
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->p:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private u()Z
    .locals 4

    const/4 v0, 0x0

    .line 27139
    :try_start_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 2176
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2177
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->v()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->q:Lcom/hbb20/a;

    .line 28689
    iget-object v3, v3, Lcom/hbb20/a;->i:Ljava/lang/String;

    .line 2177
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29139
    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    .line 2177
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->q:Lcom/hbb20/a;

    .line 29681
    iget-object v3, v3, Lcom/hbb20/a;->h:Ljava/lang/String;

    .line 2177
    invoke-virtual {v1, v2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/k$a;

    move-result-object v1

    .line 2178
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->v()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/google/i18n/phonenumbers/k$a;)Z

    move-result v0

    return v0

    .line 30139
    :cond_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 2180
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    const-string v2, "No editText for Carrier number found."

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return v0
.end method

.method private v()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .locals 1

    .line 2192
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->y:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v0, :cond_0

    .line 2193
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->y:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 2195
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->y:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    return-object v0
.end method

.method private w()Z
    .locals 4

    const/4 v0, 0x0

    .line 2250
    :try_start_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2251
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2252
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/hbb20/CountryCodePicker;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2258
    :cond_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    .line 2261
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private x()Z
    .locals 4

    const/4 v0, 0x0

    .line 2288
    :try_start_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2289
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2290
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/hbb20/CountryCodePicker;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2296
    :cond_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    .line 2299
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private y()Z
    .locals 4

    const/4 v0, 0x0

    .line 2316
    :try_start_0
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2317
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lcom/hbb20/CountryCodePicker;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2323
    :cond_0
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    .line 2326
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public final a()Lcom/hbb20/CountryCodePicker$e;
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->aj:Lcom/hbb20/CountryCodePicker$e;

    if-nez v0, :cond_0

    .line 958
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->j()V

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->aj:Lcom/hbb20/CountryCodePicker$e;

    return-object v0
.end method

.method final a(Lcom/hbb20/a;)V
    .locals 5

    .line 782
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->aM:Lcom/hbb20/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/hbb20/c;->a(Lcom/hbb20/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->aM:Lcom/hbb20/c;

    invoke-interface {v1, p1}, Lcom/hbb20/c;->a(Lcom/hbb20/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x0

    .line 787
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->au:Z

    const-string v1, ""

    .line 788
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->av:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 792
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v2

    iget-object v3, p0, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    iget v4, p0, Lcom/hbb20/CountryCodePicker;->e:I

    invoke-static {p1, v2, v3, v4}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/util/List;I)Lcom/hbb20/a;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 798
    :cond_1
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->q:Lcom/hbb20/a;

    .line 803
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->C:Z

    const-string v3, "  "

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->O:Z

    if-eqz v2, :cond_4

    .line 804
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 806
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->P:Z

    if-eqz v2, :cond_2

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ud83c\udfc1\u200b "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 810
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/hbb20/a;->a(Lcom/hbb20/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u200b "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 814
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/hbb20/a;->a(Lcom/hbb20/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 819
    :cond_4
    :goto_0
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->D:Z

    if-eqz v2, :cond_5

    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12697
    iget-object v1, p1, Lcom/hbb20/a;->j:Ljava/lang/String;

    .line 820
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 824
    :cond_5
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->z:Z

    if-eqz v2, :cond_7

    .line 825
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->D:Z

    if-eqz v2, :cond_6

    .line 826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13681
    iget-object v1, p1, Lcom/hbb20/a;->h:Ljava/lang/String;

    .line 826
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 828
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14681
    iget-object v1, p1, Lcom/hbb20/a;->h:Ljava/lang/String;

    .line 828
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 833
    :cond_7
    :goto_1
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->A:Z

    const-string v4, "+"

    if-eqz v2, :cond_9

    .line 834
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 837
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14689
    iget-object v1, p1, Lcom/hbb20/a;->i:Ljava/lang/String;

    .line 837
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 840
    :cond_9
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    iget-boolean v2, p0, Lcom/hbb20/CountryCodePicker;->C:Z

    if-nez v2, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15689
    iget-object v1, p1, Lcom/hbb20/a;->i:Ljava/lang/String;

    .line 844
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 845
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    :cond_a
    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/hbb20/a;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 853
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->p()V

    .line 855
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->n()V

    .line 858
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->aO:Lcom/hbb20/CountryCodePicker$h;

    if-eqz p1, :cond_b

    .line 859
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->u()Z

    move-result p1

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->as:Z

    :cond_b
    const/4 p1, 0x1

    .line 864
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->au:Z

    .line 867
    iget-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->ax:Z

    if-eqz p1, :cond_c

    .line 869
    :try_start_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    iget v1, p0, Lcom/hbb20/CountryCodePicker;->aw:I

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 870
    iput-boolean v0, p0, Lcom/hbb20/CountryCodePicker;->ax:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 872
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 877
    :cond_c
    :goto_2
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->m()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 2165
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->t:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0, p1}, Lcom/hbb20/e;->a(Lcom/hbb20/CountryCodePicker;Ljava/lang/String;)V

    return-void
.end method

.method final b()V
    .locals 9

    .line 1307
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->ad:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1310
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1311
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->ad:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1312
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/hbb20/CountryCodePicker;->af:Ljava/util/List;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v8

    invoke-static {v6, v7, v8, v5}, Lcom/hbb20/a;->a(Landroid/content/Context;Ljava/util/List;Lcom/hbb20/CountryCodePicker$e;Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1314
    invoke-static {v5, v0}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1315
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1320
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 1321
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    goto :goto_2

    .line 1323
    :cond_3
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    goto :goto_2

    .line 1308
    :cond_4
    :goto_1
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    .line 1326
    :goto_2
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 1328
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/a;

    .line 1329
    invoke-virtual {v1}, Lcom/hbb20/a;->b()V

    goto :goto_3

    :cond_5
    return-void
.end method

.method final c()V
    .locals 8

    .line 1341
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->ag:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1365
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1366
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->ag:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 1367
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1369
    invoke-static {v5, v0}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1370
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1375
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 1376
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->af:Ljava/util/List;

    goto :goto_3

    .line 1378
    :cond_3
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->af:Ljava/util/List;

    goto :goto_3

    .line 1343
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->ah:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1344
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->ah:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->ah:Ljava/lang/String;

    .line 1345
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->g:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/hbb20/a;->d(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;)Ljava/util/List;

    move-result-object v0

    .line 1346
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1347
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hbb20/a;

    .line 1349
    iget-object v4, p0, Lcom/hbb20/CountryCodePicker;->ah:Ljava/lang/String;

    .line 16681
    iget-object v5, v3, Lcom/hbb20/a;->h:Ljava/lang/String;

    .line 1349
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1350
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1354
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1355
    iput-object v2, p0, Lcom/hbb20/CountryCodePicker;->af:Ljava/util/List;

    goto :goto_3

    .line 1357
    :cond_7
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->af:Ljava/util/List;

    goto :goto_3

    .line 1361
    :cond_8
    iput-object v1, p0, Lcom/hbb20/CountryCodePicker;->af:Ljava/util/List;

    .line 1382
    :goto_3
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->af:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 1384
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/a;

    .line 1385
    invoke-virtual {v1}, Lcom/hbb20/a;->b()V

    goto :goto_4

    :cond_9
    return-void
.end method

.method public final d()I
    .locals 1

    .line 20600
    :try_start_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    iget-object v0, v0, Lcom/hbb20/a;->i:Ljava/lang/String;

    .line 1613
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1615
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()V
    .locals 3

    .line 1657
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v1

    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->r()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object v0

    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    .line 1658
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .line 1680
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21669
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->l()Lcom/hbb20/a;

    move-result-object v1

    iget-object v1, v1, Lcom/hbb20/a;->i:Ljava/lang/String;

    .line 1680
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1730
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->l()Lcom/hbb20/a;

    move-result-object v0

    iget-object v0, v0, Lcom/hbb20/a;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 2401
    invoke-static {}, Lcom/hbb20/e;->a()V

    .line 2402
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setArrowColor(I)V
    .locals 2

    .line 1915
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->U:I

    const/16 v0, -0x63

    if-ne p1, v0, :cond_0

    .line 1917
    iget p1, p0, Lcom/hbb20/CountryCodePicker;->T:I

    if-eq p1, v0, :cond_1

    .line 1918
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 1921
    :cond_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void
.end method

.method public setArrowSize(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 1955
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1956
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1957
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1958
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setAutoDetectedCountry(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2208
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->x:Lcom/hbb20/CountryCodePicker$a;

    iget-object v2, v2, Lcom/hbb20/CountryCodePicker$a;->representation:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2209
    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->x:Lcom/hbb20/CountryCodePicker$a;

    iget-object v2, v2, Lcom/hbb20/CountryCodePicker$a;->representation:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 2217
    :pswitch_0
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->y()Z

    move-result v1

    goto :goto_1

    .line 2214
    :pswitch_1
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->x()Z

    move-result v1

    goto :goto_1

    .line 2211
    :pswitch_2
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->w()Z

    move-result v1

    :goto_1
    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 2230
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 2233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2234
    sget-object v1, Lcom/hbb20/CountryCodePicker;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setAutoDetectCountry: Exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 2236
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->e()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAutoDetectionFailureListener(Lcom/hbb20/CountryCodePicker$d;)V
    .locals 0

    .line 2138
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->aP:Lcom/hbb20/CountryCodePicker$d;

    return-void
.end method

.method public setCcpClickable(Z)V
    .locals 1

    .line 1449
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->al:Z

    if-nez p1, :cond_0

    .line 1451
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->s:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1452
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->s:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1453
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void

    .line 1455
    :cond_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->s:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->aH:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1456
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->s:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1457
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method public setCcpDialogShowFlag(Z)V
    .locals 0

    .line 594
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->G:Z

    return-void
.end method

.method public setCcpDialogShowNameCode(Z)V
    .locals 0

    .line 562
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->M:Z

    return-void
.end method

.method public setCcpDialogShowPhoneCode(Z)V
    .locals 0

    .line 546
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->B:Z

    return-void
.end method

.method public setCcpDialogShowTitle(Z)V
    .locals 0

    .line 578
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->F:Z

    return-void
.end method

.method public setContentColor(I)V
    .locals 2

    .line 1900
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->T:I

    .line 1901
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1904
    iget p1, p0, Lcom/hbb20/CountryCodePicker;->U:I

    const/16 v0, -0x63

    if-ne p1, v0, :cond_0

    .line 1905
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->m:Landroid/widget/ImageView;

    iget v0, p0, Lcom/hbb20/CountryCodePicker;->T:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setCountryAutoDetectionPref(Lcom/hbb20/CountryCodePicker$a;)V
    .locals 0

    .line 2341
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->x:Lcom/hbb20/CountryCodePicker$a;

    return-void
.end method

.method public setCountryForNameCode(Ljava/lang/String;)V
    .locals 3

    .line 1771
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1773
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    if-nez p1, :cond_0

    .line 1774
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v0

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    iget v2, p0, Lcom/hbb20/CountryCodePicker;->e:I

    invoke-static {p1, v0, v1, v2}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/util/List;I)Lcom/hbb20/a;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    .line 1776
    :cond_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    return-void

    .line 1778
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    return-void
.end method

.method public setCountryForPhoneCode(I)V
    .locals 3

    .line 1752
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/util/List;I)Lcom/hbb20/a;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1754
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    if-nez p1, :cond_0

    .line 1755
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v0

    iget-object v1, p0, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    iget v2, p0, Lcom/hbb20/CountryCodePicker;->e:I

    invoke-static {p1, v0, v1, v2}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/util/List;I)Lcom/hbb20/a;

    move-result-object p1

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    .line 1757
    :cond_0
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    return-void

    .line 1759
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    return-void
.end method

.method public setCountryPreference(Ljava/lang/String;)V
    .locals 0

    .line 1991
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->ad:Ljava/lang/String;

    return-void
.end method

.method public setCurrentTextGravity(Lcom/hbb20/CountryCodePicker$i;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->u:Lcom/hbb20/CountryCodePicker$i;

    .line 677
    iget p1, p1, Lcom/hbb20/CountryCodePicker$i;->enumIndex:I

    invoke-direct {p0, p1}, Lcom/hbb20/CountryCodePicker;->a(I)V

    return-void
.end method

.method public setCustomDialogTextProvider(Lcom/hbb20/CountryCodePicker$b;)V
    .locals 0

    .line 2148
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->az:Lcom/hbb20/CountryCodePicker$b;

    return-void
.end method

.method public setCustomMasterCountries(Ljava/lang/String;)V
    .locals 0

    .line 1421
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->ag:Ljava/lang/String;

    return-void
.end method

.method public setDefaultCountryUsingNameCode(Ljava/lang/String;)V
    .locals 2

    .line 1585
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19681
    iget-object v0, p1, Lcom/hbb20/a;->h:Ljava/lang/String;

    .line 1589
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->f:Ljava/lang/String;

    .line 19754
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    :cond_0
    return-void
.end method

.method public setDefaultCountryUsingPhoneCode(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1565
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/util/List;I)Lcom/hbb20/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1569
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->e:I

    .line 18754
    iput-object v0, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    :cond_0
    return-void
.end method

.method public setDetectCountryWithAreaCode(Z)V
    .locals 0

    .line 2352
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->L:Z

    .line 2353
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->p()V

    return-void
.end method

.method public setDialogBackground(I)V
    .locals 0

    .line 1235
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->aB:I

    return-void
.end method

.method public setDialogBackgroundColor(I)V
    .locals 0

    .line 1222
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->aC:I

    return-void
.end method

.method public setDialogCornerRaius(F)V
    .locals 0

    .line 1256
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->aG:F

    return-void
.end method

.method public setDialogEventsListener(Lcom/hbb20/CountryCodePicker$c;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->ay:Lcom/hbb20/CountryCodePicker$c;

    return-void
.end method

.method public setDialogKeyboardAutoPopup(Z)V
    .locals 0

    .line 1108
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->ak:Z

    return-void
.end method

.method public setDialogSearchEditTextTintColor(I)V
    .locals 0

    .line 1248
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->aE:I

    return-void
.end method

.method public setDialogTextColor(I)V
    .locals 0

    .line 1274
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->aD:I

    return-void
.end method

.method public setDialogTypeFace(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1296
    :try_start_0
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->W:Landroid/graphics/Typeface;

    const/16 p1, -0x63

    .line 1297
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->aa:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1299
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setDialogTypeFace(Landroid/graphics/Typeface;I)V
    .locals 0

    .line 2027
    :try_start_0
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->W:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2032
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setExcludedCountries(Ljava/lang/String;)V
    .locals 0

    .line 1432
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->ah:Ljava/lang/String;

    .line 1433
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->c()V

    return-void
.end method

.method public setFastScrollerBubbleColor(I)V
    .locals 0

    .line 663
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->ae:I

    return-void
.end method

.method public setFastScrollerBubbleTextAppearance(I)V
    .locals 0

    .line 637
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->aF:I

    return-void
.end method

.method public setFastScrollerHandleColor(I)V
    .locals 0

    .line 650
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->aA:I

    return-void
.end method

.method public setFlagBorderColor(I)V
    .locals 1

    .line 1931
    iput p1, p0, Lcom/hbb20/CountryCodePicker;->V:I

    .line 1932
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setFlagSize(I)V
    .locals 1

    .line 2066
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2067
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setFullNumber(Ljava/lang/String;)V
    .locals 3

    .line 1849
    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hbb20/CountryCodePicker;->a()Lcom/hbb20/CountryCodePicker$e;

    move-result-object v1

    iget-object v2, p0, Lcom/hbb20/CountryCodePicker;->ab:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/hbb20/a;->a(Landroid/content/Context;Lcom/hbb20/CountryCodePicker$e;Ljava/util/List;Ljava/lang/String;)Lcom/hbb20/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22750
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->r:Lcom/hbb20/a;

    .line 1852
    :cond_0
    invoke-virtual {p0, v0}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 23487
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 23689
    :cond_1
    iget-object v1, v0, Lcom/hbb20/a;->i:Ljava/lang/String;

    .line 23490
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 24689
    :cond_2
    iget-object v0, v0, Lcom/hbb20/a;->i:Ljava/lang/String;

    .line 23494
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 25139
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    .line 1855
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1856
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->p()V

    return-void

    .line 1858
    :cond_4
    sget-object p1, Lcom/hbb20/CountryCodePicker;->a:Ljava/lang/String;

    const-string v0, "EditText for carrier number is not registered. Register it using registerCarrierNumberEditText() before getFullNumber() or setFullNumber()."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHintExampleNumberEnabled(Z)V
    .locals 0

    .line 2357
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->ap:Z

    .line 2358
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->n()V

    return-void
.end method

.method public setHintExampleNumberType(Lcom/hbb20/CountryCodePicker$g;)V
    .locals 0

    .line 2362
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->R:Lcom/hbb20/CountryCodePicker$g;

    .line 2363
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->n()V

    return-void
.end method

.method public setImageViewFlag(Landroid/widget/ImageView;)V
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->n:Landroid/widget/ImageView;

    return-void
.end method

.method public setInternationalFormattingOnly(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->Q:Z

    .line 199
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->p()V

    :cond_0
    return-void
.end method

.method public setNumberAutoFormattingEnabled(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->ao:Z

    .line 183
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->p()V

    :cond_0
    return-void
.end method

.method public setOnCountryChangeListener(Lcom/hbb20/CountryCodePicker$f;)V
    .locals 0

    .line 2057
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->aN:Lcom/hbb20/CountryCodePicker$f;

    return-void
.end method

.method public setPhoneNumberValidityChangeListener(Lcom/hbb20/CountryCodePicker$h;)V
    .locals 1

    .line 2125
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->aO:Lcom/hbb20/CountryCodePicker$h;

    .line 2126
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->k:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2127
    invoke-direct {p0}, Lcom/hbb20/CountryCodePicker;->u()Z

    move-result p1

    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->as:Z

    :cond_0
    return-void
.end method

.method public setSearchAllowed(Z)V
    .locals 0

    .line 2115
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->H:Z

    return-void
.end method

.method public setShowFastScroller(Z)V
    .locals 0

    .line 1121
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->E:Z

    return-void
.end method

.method public setShowPhoneCode(Z)V
    .locals 0

    .line 607
    iput-boolean p1, p0, Lcom/hbb20/CountryCodePicker;->A:Z

    .line 608
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->q:Lcom/hbb20/a;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    return-void
.end method

.method public setTalkBackTextProvider(Lcom/hbb20/c;)V
    .locals 0

    .line 2371
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->aM:Lcom/hbb20/c;

    .line 2372
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker;->q:Lcom/hbb20/a;

    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/a;)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 1942
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->j:Landroid/widget/TextView;

    const/4 v1, 0x0

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1943
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setArrowSize(I)V

    .line 1944
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setFlagSize(I)V

    :cond_0
    return-void
.end method

.method public setTextView_selectedCountry(Landroid/widget/TextView;)V
    .locals 0

    .line 763
    iput-object p1, p0, Lcom/hbb20/CountryCodePicker;->j:Landroid/widget/TextView;

    return-void
.end method

.method public setTypeFace(Landroid/graphics/Typeface;)V
    .locals 1

    .line 2012
    :try_start_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2013
    invoke-virtual {p0, p1}, Lcom/hbb20/CountryCodePicker;->setDialogTypeFace(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2015
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setTypeFace(Landroid/graphics/Typeface;I)V
    .locals 1

    .line 2044
    :try_start_0
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 2045
    invoke-virtual {p0, p1, p2}, Lcom/hbb20/CountryCodePicker;->setDialogTypeFace(Landroid/graphics/Typeface;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2047
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
