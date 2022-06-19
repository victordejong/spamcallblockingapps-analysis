.class public Lcom/allinone/callerid/start/MissedCallActivityNew;
.super Lcom/allinone/callerid/main/BaseActivity;
.source "MissedCallActivityNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/TextView;

.field private C:Z

.field private D:Landroid/widget/FrameLayout;

.field private E:Landroid/widget/FrameLayout;

.field private F:Ljava/lang/String;

.field private G:Landroid/content/Context;

.field private H:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private I:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private J:Z

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:I

.field private N:Landroid/widget/LinearLayout;

.field private O:Landroid/widget/LinearLayout;

.field private P:Landroid/widget/ImageView;

.field private Q:Landroid/widget/ImageView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/LinearLayout;

.field private U:Landroid/widget/ImageView;

.field private V:Landroid/widget/TextView;

.field private W:Lcom/allinone/callerid/search/CallLogBean;

.field private X:Landroid/widget/ImageView;

.field private Y:Landroid/widget/FrameLayout;

.field private Z:Z

.field private a0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private b0:Landroid/widget/FrameLayout;

.field private c0:Landroid/widget/TextView;

.field private d0:Landroid/widget/FrameLayout;

.field private e0:Landroid/widget/TextView;

.field private f0:Landroid/widget/FrameLayout;

.field private g0:Landroid/widget/TextView;

.field private h0:Landroid/widget/FrameLayout;

.field private i0:Landroid/widget/TextView;

.field private j0:Landroid/widget/TextView;

.field private k0:I

.field private final u:Ljava/lang/String;

.field private v:Lcom/allinone/callerid/search/EZSearchResult;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/main/BaseActivity;-><init>()V

    const-string v0, "MissedCallActivityNew"

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->u:Ljava/lang/String;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->F:Ljava/lang/String;

    return-void
.end method

.method private C()V
    .locals 7

    const v0, 0x7f040069

    const v1, 0x7f08007c

    .line 1
    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/c1;->b(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->k0:I

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/f1;->a()Landroid/graphics/Typeface;

    move-result-object v1

    const v2, 0x7f090056

    .line 4
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 5
    invoke-virtual {v2, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090364

    .line 6
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f09009b

    .line 7
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->D:Landroid/widget/FrameLayout;

    const v3, 0x7f0900a6

    .line 8
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->E:Landroid/widget/FrameLayout;

    const v3, 0x7f0901e2

    .line 9
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f09009a

    .line 10
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x7f090452

    .line 11
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->A:Landroid/widget/ImageView;

    const v5, 0x7f0903ba

    .line 12
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->H:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v5, 0x7f090393

    .line 13
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v5, 0x7f0903aa

    .line 14
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->N:Landroid/widget/LinearLayout;

    const v5, 0x7f0903bb

    .line 15
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->O:Landroid/widget/LinearLayout;

    const v5, 0x7f090284

    .line 16
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->P:Landroid/widget/ImageView;

    const v5, 0x7f09028a

    .line 17
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->Q:Landroid/widget/ImageView;

    const v5, 0x7f0902ef

    .line 18
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->X:Landroid/widget/ImageView;

    const v5, 0x7f09009f

    .line 19
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->Y:Landroid/widget/FrameLayout;

    const v5, 0x7f090637

    .line 20
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 21
    iget-object v6, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->Y:Landroid/widget/FrameLayout;

    invoke-virtual {v6, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v5, 0x7f090395

    .line 23
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->a0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v5, 0x7f0900a1

    .line 24
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->b0:Landroid/widget/FrameLayout;

    const v5, 0x7f090649

    .line 25
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->c0:Landroid/widget/TextView;

    const v5, 0x7f0900a5

    .line 26
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->d0:Landroid/widget/FrameLayout;

    const v5, 0x7f09064c

    .line 27
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->e0:Landroid/widget/TextView;

    const v5, 0x7f0900a3

    .line 28
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->f0:Landroid/widget/FrameLayout;

    const v5, 0x7f0906bd

    .line 29
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->g0:Landroid/widget/TextView;

    const v5, 0x7f0900a2

    .line 30
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->h0:Landroid/widget/FrameLayout;

    const v5, 0x7f090618

    .line 31
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->i0:Landroid/widget/TextView;

    .line 32
    iget-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->b0:Landroid/widget/FrameLayout;

    invoke-virtual {v5, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->d0:Landroid/widget/FrameLayout;

    invoke-virtual {v5, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->f0:Landroid/widget/FrameLayout;

    invoke-virtual {v5, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->h0:Landroid/widget/FrameLayout;

    invoke-virtual {v5, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->c0:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    iget-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->e0:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 38
    iget-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->g0:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 39
    iget-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->i0:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 40
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->E:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0904e1

    .line 45
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->w:Landroid/widget/LinearLayout;

    const v2, 0x7f0906c2

    .line 46
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->L:Landroid/widget/TextView;

    const v2, 0x7f09064f

    .line 47
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->j0:Landroid/widget/TextView;

    const v2, 0x7f0906c3

    .line 48
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->x:Landroid/widget/TextView;

    const v2, 0x7f090645

    .line 49
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->K:Landroid/widget/TextView;

    const v2, 0x7f0906f2

    .line 50
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->y:Landroid/widget/TextView;

    const v2, 0x7f090765

    .line 51
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->B:Landroid/widget/TextView;

    const v2, 0x7f0906c0

    .line 52
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->z:Landroid/widget/TextView;

    const v2, 0x7f09062e

    .line 53
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->S:Landroid/widget/TextView;

    const v2, 0x7f09066c

    .line 54
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->R:Landroid/widget/TextView;

    const v2, 0x7f090796

    .line 55
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 56
    iget-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->S:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 57
    iget-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->R:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v2, 0x7f090621

    .line 58
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    iget-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->L:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    iget-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->j0:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 61
    iget-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->x:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 62
    iget-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->K:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    iget-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->y:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 64
    iget-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->B:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    iget-object v1, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->z:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, 0x7f0903c8

    .line 66
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->T:Landroid/widget/LinearLayout;

    const v1, 0x7f09033d

    .line 67
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->U:Landroid/widget/ImageView;

    const v1, 0x7f0907b9

    .line 68
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->V:Landroid/widget/TextView;

    .line 69
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic X(Lcom/allinone/callerid/start/MissedCallActivityNew;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->C()V

    return-void
.end method

.method static synthetic Y(Lcom/allinone/callerid/start/MissedCallActivityNew;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->i0()V

    return-void
.end method

.method static synthetic Z(Lcom/allinone/callerid/start/MissedCallActivityNew;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->M:I

    return p0
.end method

.method static synthetic a0(Lcom/allinone/callerid/start/MissedCallActivityNew;)Lcom/allinone/callerid/search/EZSearchResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    return-object p0
.end method

.method static synthetic b0(Lcom/allinone/callerid/start/MissedCallActivityNew;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c0(Lcom/allinone/callerid/start/MissedCallActivityNew;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->f0()V

    return-void
.end method

.method private d0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->F:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/b1;->j(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f010001

    const/high16 v2, 0x7f010000

    const/4 v3, 0x1

    const v4, 0x7f100229

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/a1;->p()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-lt v0, v5, :cond_0

    .line 5
    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->F:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/allinone/callerid/util/b1;->s(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->F:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 8
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->F:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/allinone/callerid/util/b1;->d(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v5, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->F:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/allinone/callerid/util/p0;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 13
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 14
    :catch_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 15
    :goto_0
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "missed_dialog_call"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private e0()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/h1;->u0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/allinone/callerid/util/a1;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->J:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/allinone/callerid/util/a1;->w1(Z)V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->j0(Landroid/content/Context;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->j0(Landroid/content/Context;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/allinone/callerid/util/a1;->d0()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 9
    new-instance v0, Lcom/allinone/callerid/start/MissedCallActivityNew$f;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/start/MissedCallActivityNew$f;-><init>(Lcom/allinone/callerid/start/MissedCallActivityNew;)V

    invoke-static {v0}, Lcom/allinone/callerid/i/a/e/a;->a(Lcom/allinone/callerid/i/a/e/b;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/h1;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->M:I

    if-nez v0, :cond_3

    .line 11
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/recommend/RecommendActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private f0()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "missed_request_num"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/ads/d$a;

    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v1

    const-string v2, "ca-app-pub-5825926894918682/7437588851"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/d$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/allinone/callerid/start/MissedCallActivityNew$b;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/start/MissedCallActivityNew$b;-><init>(Lcom/allinone/callerid/start/MissedCallActivityNew;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->c(Lcom/google/android/gms/ads/nativead/a$c;)Lcom/google/android/gms/ads/d$a;

    .line 4
    new-instance v1, Lcom/google/android/gms/ads/t$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/t$a;-><init>()V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/t$a;->b(Z)Lcom/google/android/gms/ads/t$a;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/ads/t$a;->a()Lcom/google/android/gms/ads/t;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/google/android/gms/ads/formats/c$a;

    invoke-direct {v2}, Lcom/google/android/gms/ads/formats/c$a;-><init>()V

    .line 8
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/formats/c$a;->h(Lcom/google/android/gms/ads/t;)Lcom/google/android/gms/ads/formats/c$a;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/c$a;->a()Lcom/google/android/gms/ads/formats/c;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->f(Lcom/google/android/gms/ads/formats/c;)Lcom/google/android/gms/ads/d$a;

    .line 11
    new-instance v1, Lcom/allinone/callerid/start/MissedCallActivityNew$c;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/start/MissedCallActivityNew$c;-><init>(Lcom/allinone/callerid/start/MissedCallActivityNew;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d$a;->e(Lcom/google/android/gms/ads/b;)Lcom/google/android/gms/ads/d$a;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/ads/d$a;->a()Lcom/google/android/gms/ads/d;

    move-result-object v0

    .line 13
    new-instance v1, Lcom/google/android/gms/ads/e$a;

    invoke-direct {v1}, Lcom/google/android/gms/ads/e$a;-><init>()V

    const-class v2, Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/ads/e$a;->b(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/e$a;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/ads/e$a;->c()Lcom/google/android/gms/ads/e;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/d;->b(Lcom/google/android/gms/ads/e;)V

    return-void
.end method

.method private g0()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/allinone/callerid/util/a1;->x2()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/allinone/callerid/dialog/f;

    const v1, 0x7f1100f6

    invoke-direct {v0, p0, v1}, Lcom/allinone/callerid/dialog/f;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/allinone/callerid/start/MissedCallActivityNew$g;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/start/MissedCallActivityNew$g;-><init>(Lcom/allinone/callerid/start/MissedCallActivityNew;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/f/b;->b(Ljava/lang/String;Lcom/allinone/callerid/i/a/f/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private h0()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->M:I

    const v1, 0x7f0801b4

    const-string v2, ""

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 2
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    .line 3
    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getRaw_contact_id()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->A:Landroid/widget/ImageView;

    .line 4
    invoke-static {p0, v0, v2, v1, v3}, Lcom/allinone/callerid/util/t;->c(Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->G:Landroid/content/Context;

    iget-object v2, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->A:Landroid/widget/ImageView;

    invoke-static {v0, v2, v1, v3}, Lcom/allinone/callerid/util/t;->b(Landroid/content/Context;Ljava/lang/Object;ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->M:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getReport_count()I

    move-result v0

    if-lez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->A:Landroid/widget/ImageView;

    const v1, 0x7f0801b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->A:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private i0()V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v0, :cond_20

    .line 2
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->h0()V

    .line 3
    sget-boolean v0, Lcom/allinone/callerid/util/c0;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "missed_activity"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ezSearchResult"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/allinone/callerid/util/c0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-boolean v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->C:Z

    const-wide/16 v2, 0x1

    if-nez v0, :cond_2

    .line 6
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getDate()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->J:Z

    .line 8
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->x:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1001df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->x:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1001b5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->F:Ljava/lang/String;

    .line 12
    :cond_3
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v5, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    iget-object v5, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 14
    iget-object v5, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->y:Landroid/widget/TextView;

    iget-object v8, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v8}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 16
    iget-object v5, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->L:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v5, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->j0:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 18
    :cond_4
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->L:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->j0:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    :goto_1
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    .line 21
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 22
    iget-object v5, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->y:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 23
    :cond_6
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->y:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :goto_2
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    :goto_3
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getLocation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 26
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->z:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->z:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/EZSearchResult;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    :cond_7
    iget v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->M:I

    if-nez v0, :cond_1d

    .line 29
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, " "

    if-eqz v0, :cond_8

    .line 30
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getReport_count()I

    move-result v3

    if-lez v3, :cond_8

    .line 31
    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->w:Landroid/widget/LinearLayout;

    iget v5, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->k0:I

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 32
    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->A:Landroid/widget/ImageView;

    const v5, 0x7f0801b5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->H:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 34
    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 35
    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->B:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->B:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v8}, Lcom/allinone/callerid/search/EZSearchResult;->getReport_count()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f1002a3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_8
    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getSubtype()Ljava/lang/String;

    move-result-object v3

    .line 38
    iget-object v5, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/EZSearchResult;->getKeyword()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_9

    .line 39
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 40
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_d

    .line 42
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "subtype"

    .line 43
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    iget-object v5, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->K:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object v5, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->K:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    if-eqz v5, :cond_a

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 47
    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->K:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->K:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 49
    :cond_a
    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->B:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_c

    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getLocation()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 50
    :cond_b
    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->N:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 51
    :cond_c
    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->B:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-ne v3, v6, :cond_d

    .line 52
    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    :cond_d
    :goto_4
    iget-object v3, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v3}, Lcom/allinone/callerid/search/EZSearchResult;->getBlock_count()I

    move-result v3

    .line 54
    iget-object v5, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v5}, Lcom/allinone/callerid/search/EZSearchResult;->getDeclined_count()I

    move-result v5

    .line 55
    iget-object v6, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v6}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const v8, 0x7f0801fa

    const v9, 0x7f0801f0

    const v10, 0x7f10032f

    const v12, 0x7f100374

    const-string v13, "zh-TW"

    const-string v14, "zh"

    const/4 v15, 0x3

    if-eqz v0, :cond_16

    .line 56
    :try_start_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    if-eqz v6, :cond_e

    .line 57
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 58
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v11, "spam_name_missed_dialog"

    invoke-virtual {v0, v11}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_5

    .line 59
    :cond_e
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v11, "spam_no_name_missed_dialog"

    invoke-virtual {v0, v11}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :goto_5
    if-lt v3, v15, :cond_12

    .line 60
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    .line 62
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_6

    .line 63
    :cond_f
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->V:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 64
    :cond_10
    :goto_6
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->V:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_7
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v6, :cond_11

    .line 68
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 69
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "spam_name_missed_blocked"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 70
    :cond_11
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "spam_no_name_missed_blocked"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_12
    if-lt v5, v15, :cond_1f

    .line 71
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    .line 73
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_8

    .line 74
    :cond_13
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->V:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100375

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 75
    :cond_14
    :goto_8
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->V:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f100375

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_9
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v6, :cond_15

    .line 79
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 80
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "spam_name_missed_declined"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 81
    :cond_15
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "spam_no_name_missed_declined"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_16
    if-eqz v6, :cond_17

    .line 82
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_e

    .line 83
    :cond_17
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v4, "no_spam_no_name_missed_dialog"

    invoke-virtual {v0, v4}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    if-lt v3, v15, :cond_1a

    .line 84
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    .line 86
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_a

    .line 87
    :cond_18
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->V:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 88
    :cond_19
    :goto_a
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->V:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_b
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "no_spam_no_name_missed_blocked"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_1a
    if-lt v5, v15, :cond_1f

    .line 93
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    invoke-static {}, Lcom/allinone/callerid/main/EZCallApplication;->c()Lcom/allinone/callerid/main/EZCallApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/main/EZCallApplication;->h:Ljava/lang/String;

    .line 95
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_c

    .line 96
    :cond_1b
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->V:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100375

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 97
    :cond_1c
    :goto_c
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->V:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100375

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_d
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->T:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v2, "no_spam_no_name_missed_declined"

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 102
    :cond_1d
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->D:Landroid/widget/FrameLayout;

    const v4, 0x7f080091

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 103
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->P:Landroid/widget/ImageView;

    const v4, 0x7f08010d

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->S:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060126

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->E:Landroid/widget/FrameLayout;

    const v4, 0x7f08008e

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 106
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->Q:Landroid/widget/ImageView;

    const v4, 0x7f080187

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->R:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->X:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v0}, Lcom/allinone/callerid/search/EZSearchResult;->getDate()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_1f

    .line 110
    iget-boolean v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->Z:Z

    if-eqz v0, :cond_1e

    .line 111
    invoke-static {}, Lcom/allinone/callerid/d/f/f;->h()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 112
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->D:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 113
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->Y:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_e

    .line 114
    :cond_1e
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->I:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 115
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->N:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 116
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->a0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 117
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->j0:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    invoke-static {}, Lcom/allinone/callerid/d/f/f;->h()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 119
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->h0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 120
    :cond_1f
    :goto_e
    new-instance v0, Lcom/allinone/callerid/search/CallLogBean;

    invoke-direct {v0}, Lcom/allinone/callerid/search/CallLogBean;-><init>()V

    iput-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    .line 121
    iget-object v2, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->C0(Ljava/lang/String;)V

    .line 122
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    iget-object v2, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->E0(Ljava/lang/String;)V

    .line 123
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    iget-object v2, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->d0(Ljava/lang/String;)V

    .line 124
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    iget-object v2, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getWebsite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->i1(Ljava/lang/String;)V

    .line 125
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    iget-object v2, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->e0(Ljava/lang/String;)V

    .line 126
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    iget-object v2, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->O0(Ljava/lang/String;)V

    .line 127
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    iget-object v2, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getType_label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->e1(Ljava/lang/String;)V

    .line 128
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    iget-object v2, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getT_p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->Z0(Ljava/lang/String;)V

    .line 129
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    iget-object v2, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getTel_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->a1(Ljava/lang/String;)V

    .line 130
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    iget-object v2, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getReport_count()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->L0(Ljava/lang/String;)V

    .line 131
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    iget-object v2, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->g0(Ljava/lang/String;)V

    .line 132
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    iget-object v2, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->M0(Ljava/lang/String;)V

    .line 133
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    iget-object v2, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getFormat_tel_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->x0(Ljava/lang/String;)V

    .line 134
    iget-object v0, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    iget-object v2, v1, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    invoke-virtual {v2}, Lcom/allinone/callerid/search/EZSearchResult;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/allinone/callerid/search/CallLogBean;->H0(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_20
    :goto_f
    return-void
.end method

.method private j0(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/allinone/callerid/dialog/k;

    const v1, 0x7f1100f6

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/allinone/callerid/dialog/k;-><init>(Landroid/content/Context;IZ)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x7f6

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x7d3

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const-string v0, "is_callscreen"

    const-string v1, "missed_btn_detial"

    const/high16 v2, 0x10000000

    const-string v3, "is_missed"

    const-string v4, "contact_tony"

    const/4 v5, 0x1

    const v6, 0x7f010001

    const/high16 v7, 0x7f010000

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_5

    .line 2
    :sswitch_0
    :try_start_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "missed_close"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->e0()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    invoke-virtual {p0, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_5

    .line 6
    :sswitch_1
    :try_start_2
    iget-object p1, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->isContact()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    iget-object v8, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    iget-object v8, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 18
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 22
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 23
    invoke-virtual {p0, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 24
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    :cond_1
    :goto_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_5

    .line 26
    :sswitch_2
    :try_start_4
    iget-object p1, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz p1, :cond_3

    .line 27
    invoke-virtual {p1}, Lcom/allinone/callerid/search/EZSearchResult;->isContact()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 28
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    iget-object v8, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 31
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 35
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    iget-object v8, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 40
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 42
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 43
    invoke-virtual {p0, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 44
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    :cond_3
    :goto_3
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_5

    .line 46
    :sswitch_3
    :try_start_6
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "vnd.android-dir/mms-sms"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v1}, Lcom/allinone/callerid/search/CallLogBean;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v0, 0x10008000

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception p1

    .line 51
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_5

    .line 52
    :sswitch_4
    :try_start_8
    iget-object p1, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz p1, :cond_4

    .line 53
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/allinone/callerid/mvc/controller/contactpdt/ContactActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    iget-object v8, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->W:Lcom/allinone/callerid/search/CallLogBean;

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 58
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 61
    invoke-virtual {p0, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 62
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    :cond_4
    :goto_4
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_5

    .line 64
    :sswitch_5
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_5

    .line 69
    :sswitch_6
    invoke-direct {p0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->d0()V

    goto :goto_5

    .line 70
    :sswitch_7
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/allinone/callerid/mvc/controller/MainActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 73
    invoke-virtual {p0, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_5

    .line 75
    :sswitch_8
    invoke-direct {p0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->d0()V

    goto :goto_5

    .line 76
    :sswitch_9
    invoke-direct {p0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->g0()V

    .line 77
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "missed_btn_block_spam"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    goto :goto_5

    .line 78
    :sswitch_a
    invoke-direct {p0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->e0()V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 80
    invoke-virtual {p0, v7, v6}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090056 -> :sswitch_a
        0x7f09009a -> :sswitch_9
        0x7f09009b -> :sswitch_8
        0x7f09009f -> :sswitch_7
        0x7f0900a1 -> :sswitch_6
        0x7f0900a2 -> :sswitch_5
        0x7f0900a3 -> :sswitch_4
        0x7f0900a5 -> :sswitch_3
        0x7f0900a6 -> :sswitch_2
        0x7f0901e2 -> :sswitch_1
        0x7f090364 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/allinone/callerid/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f060121

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/allinone/callerid/util/h1;->C0(Landroid/app/Activity;I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->G:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "contact_missed"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/allinone/callerid/search/EZSearchResult;

    iput-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    const-string v0, "isuserrejected"

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->C:Z

    const-string v0, "answer"

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->Z:Z

    const-string v0, "isContact"

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->M:I

    :cond_0
    const p1, 0x7f0c0044

    .line 9
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 13
    :cond_1
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object p1

    const-string v0, "missed_activity"

    invoke-virtual {p1, v0}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/allinone/callerid/start/MissedCallActivityNew$a;

    invoke-direct {v0, p0}, Lcom/allinone/callerid/start/MissedCallActivityNew$a;-><init>(Lcom/allinone/callerid/start/MissedCallActivityNew;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const-string v0, "wjjj"

    const-string v1, "MISSCALLonDestroy"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/allinone/callerid/util/i0;->a()Lcom/allinone/callerid/util/i0;

    move-result-object v0

    iget-object v0, v0, Lcom/allinone/callerid/util/i0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/allinone/callerid/start/MissedCallActivityNew$d;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/start/MissedCallActivityNew$d;-><init>(Lcom/allinone/callerid/start/MissedCallActivityNew;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {p0}, Lcom/allinone/callerid/util/a;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->e0()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/high16 p1, 0x7f010000

    const p2, 0x7f010001

    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/allinone/callerid/main/BaseActivity;->onResume()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->v:Lcom/allinone/callerid/search/EZSearchResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->F:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    .line 3
    :try_start_1
    iget-boolean v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->C:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/start/MissedCallActivityNew;->F:Ljava/lang/String;

    new-instance v1, Lcom/allinone/callerid/start/MissedCallActivityNew$e;

    invoke-direct {v1, p0}, Lcom/allinone/callerid/start/MissedCallActivityNew$e;-><init>(Lcom/allinone/callerid/start/MissedCallActivityNew;)V

    invoke-static {v0, v1}, Lcom/allinone/callerid/i/a/g/d;->a(Ljava/lang/String;Lcom/allinone/callerid/i/a/g/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/allinone/callerid/util/j1/b;->a:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/allinone/callerid/util/j1/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/allinone/callerid/util/q;->b()Lcom/allinone/callerid/util/q;

    move-result-object v0

    const-string v1, "dialog_notifi_per_tip_enalbleed"

    invoke-virtual {v0, v1}, Lcom/allinone/callerid/util/q;->c(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/allinone/callerid/util/j1/b;->a:Z

    .line 10
    invoke-direct {p0}, Lcom/allinone/callerid/start/MissedCallActivityNew;->g0()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
