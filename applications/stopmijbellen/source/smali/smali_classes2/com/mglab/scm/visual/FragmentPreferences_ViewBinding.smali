.class public Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field public b:Lcom/mglab/scm/visual/FragmentPreferences;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public j:Landroid/view/View;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:Landroid/view/View;

.field public r:Landroid/view/View;

.field public s:Landroid/view/View;

.field public t:Landroid/view/View;

.field public u:Landroid/view/View;

.field public v:Landroid/view/View;

.field public w:Landroid/view/View;

.field public x:Landroid/view/View;

.field public y:Landroid/view/View;

.field public z:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/mglab/scm/visual/FragmentPreferences;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentPreferences;

    const v0, 0x7f090331

    const-string v1, "field \'switchLoadFeedbackNames\' and method \'onClickLoadFedbackName\'"

    .line 3
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 4
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'switchLoadFeedbackNames\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->switchLoadFeedbackNames:Landroidx/appcompat/widget/SwitchCompat;

    .line 5
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->c:Landroid/view/View;

    .line 6
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$k;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$k;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901e1

    const-string v2, "field \'loadFeedbackNamesDescriptionTV\'"

    .line 8
    invoke-static {p2, v1, v2}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 9
    invoke-static {v3, v1, v2, v0}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->loadFeedbackNamesDescriptionTV:Landroid/widget/TextView;

    const v0, 0x7f090335

    const-string v1, "field \'switchShowSIM\' and method \'onClickShowSim\'"

    .line 11
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 12
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'switchShowSIM\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->switchShowSIM:Landroidx/appcompat/widget/SwitchCompat;

    .line 13
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->d:Landroid/view/View;

    .line 14
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$q;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$q;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f09032a

    const-string v1, "field \'switchBlockSecondCall\' and method \'onClickBlockSecondCall\'"

    .line 15
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 16
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'switchBlockSecondCall\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->switchBlockSecondCall:Landroidx/appcompat/widget/SwitchCompat;

    .line 17
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->e:Landroid/view/View;

    .line 18
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$r;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$r;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f090334

    const-string v1, "field \'pinEntry\' and method \'onClickPinEntry\'"

    .line 19
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 20
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'pinEntry\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->pinEntry:Landroidx/appcompat/widget/SwitchCompat;

    .line 21
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->f:Landroid/view/View;

    .line 22
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$s;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$s;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f09029b

    const-string v1, "field \'pinEntryDescription\'"

    .line 23
    const-class v2, Landroid/widget/TextView;

    .line 24
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 25
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->pinEntryDescription:Landroid/widget/TextView;

    const v0, 0x7f090330

    const-string v1, "field \'switchHideClearButton\' and method \'onClickHideClearButton\'"

    .line 27
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 28
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'switchHideClearButton\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->switchHideClearButton:Landroidx/appcompat/widget/SwitchCompat;

    .line 29
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->g:Landroid/view/View;

    .line 30
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$t;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$t;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f090324

    const-string v1, "field \'switchAdditionalPresets\' and method \'onAdditionalPresetsSwitchClick\'"

    .line 31
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 32
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'switchAdditionalPresets\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->switchAdditionalPresets:Landroidx/appcompat/widget/SwitchCompat;

    .line 33
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->h:Landroid/view/View;

    .line 34
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$u;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$u;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0902a4

    const-string v1, "field \'presetCreateNewButton\' and method \'onCreateNewPresetClick\'"

    .line 35
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'presetCreateNewButton\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->presetCreateNewButton:Landroid/widget/Button;

    .line 37
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->i:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$v;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$v;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902b1

    const-string v1, "field \'presetsDescription\'"

    .line 39
    const-class v2, Landroid/widget/TextView;

    .line 40
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 41
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->presetsDescription:Landroid/widget/TextView;

    const v0, 0x7f090325

    const-string v1, "field \'appOnOffSwitch\' and method \'onAppOnOffClick\'"

    .line 43
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 44
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'appOnOffSwitch\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->appOnOffSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 45
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->j:Landroid/view/View;

    .line 46
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$w;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$w;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f09006f

    const-string v1, "field \'blockMethodSpinner\' and method \'onBlockMethodSpinnerClick\'"

    .line 47
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 48
    const-class v2, Landroid/widget/Spinner;

    const-string v3, "field \'blockMethodSpinner\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->blockMethodSpinner:Landroid/widget/Spinner;

    .line 49
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->k:Landroid/view/View;

    .line 50
    check-cast v1, Landroid/widget/AdapterView;

    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$x;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$x;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0902f7

    const-string v1, "field \'silenceRingerRestoreInfoTV\' and method \'onSilenceRingerReadMoreClick\'"

    .line 51
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 52
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'silenceRingerRestoreInfoTV\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->silenceRingerRestoreInfoTV:Landroid/widget/TextView;

    .line 53
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->l:Landroid/view/View;

    .line 54
    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$a;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$a;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090337

    const-string v1, "field \'switchSilenceDND\' and method \'onDNDClick\'"

    .line 55
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 56
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'switchSilenceDND\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->switchSilenceDND:Landroidx/appcompat/widget/SwitchCompat;

    .line 57
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->m:Landroid/view/View;

    .line 58
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$b;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$b;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f090127

    const-string v1, "field \'dndLL\'"

    .line 59
    const-class v2, Landroid/widget/LinearLayout;

    .line 60
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 61
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->dndLL:Landroid/widget/LinearLayout;

    const v0, 0x7f09033f

    const-string v1, "field \'systemVibrationLL\'"

    .line 63
    const-class v2, Landroid/widget/LinearLayout;

    .line 64
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 65
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->systemVibrationLL:Landroid/widget/LinearLayout;

    const v0, 0x7f090338

    const-string v1, "field \'switchSystemVibration\' and method \'onSystemVibrationClick\'"

    .line 67
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 68
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'switchSystemVibration\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->switchSystemVibration:Landroidx/appcompat/widget/SwitchCompat;

    .line 69
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->n:Landroid/view/View;

    .line 70
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$c;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$c;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f09033e

    const-string v1, "field \'switchUseAlternativeContactsName\' and method \'onUseAlternativeContactsNameClick\'"

    .line 71
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 72
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'switchUseAlternativeContactsName\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->switchUseAlternativeContactsName:Landroidx/appcompat/widget/SwitchCompat;

    .line 73
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->o:Landroid/view/View;

    .line 74
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$d;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$d;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0902b2

    const-string v1, "field \'presetsLL\'"

    .line 75
    const-class v2, Landroid/widget/LinearLayout;

    .line 76
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 77
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->presetsLL:Landroid/widget/LinearLayout;

    const v0, 0x7f09016d

    const-string v1, "field \'flagImageView\'"

    .line 79
    const-class v2, Landroid/widget/ImageView;

    .line 80
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 81
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->flagImageView:Landroid/widget/ImageView;

    const v0, 0x7f0901ce

    const-string v1, "field \'languageDescriptionTextView\'"

    .line 83
    const-class v2, Landroid/widget/TextView;

    .line 84
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 85
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->languageDescriptionTextView:Landroid/widget/TextView;

    const v0, 0x7f09032b

    const-string v1, "field \'darkThemeSwitch\' and method \'onDarkThemeClick\'"

    .line 87
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 88
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'darkThemeSwitch\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->darkThemeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 89
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->p:Landroid/view/View;

    .line 90
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$e;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$e;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f090332

    const-string v1, "field \'notificationTextColor\' and method \'onNotificationTextColorClick\'"

    .line 91
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 92
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'notificationTextColor\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->notificationTextColor:Landroidx/appcompat/widget/SwitchCompat;

    .line 93
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->q:Landroid/view/View;

    .line 94
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$f;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$f;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f090170

    const-string v1, "field \'foregroundServiceLL\'"

    .line 95
    const-class v2, Landroid/widget/LinearLayout;

    .line 96
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 97
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->foregroundServiceLL:Landroid/widget/LinearLayout;

    const v0, 0x7f09032e

    const-string v1, "field \'switchForegroundService\' and method \'onClickForegroundService\'"

    .line 99
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 100
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'switchForegroundService\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->switchForegroundService:Landroidx/appcompat/widget/SwitchCompat;

    .line 101
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->r:Landroid/view/View;

    .line 102
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$g;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$g;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f09032f

    const-string v1, "field \'switchForegroundServiceIcon\' and method \'onClickForegroundServiceIcon\'"

    .line 103
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 104
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'switchForegroundServiceIcon\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->switchForegroundServiceIcon:Landroidx/appcompat/widget/SwitchCompat;

    .line 105
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->s:Landroid/view/View;

    .line 106
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$h;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$h;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f090171

    const-string v1, "field \'foregroundServiceIconLL\'"

    .line 107
    const-class v2, Landroid/widget/LinearLayout;

    .line 108
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 109
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->foregroundServiceIconLL:Landroid/widget/LinearLayout;

    const v0, 0x7f090110

    const-string v1, "field \'defaultPhoneAppLL\'"

    .line 111
    const-class v2, Landroid/widget/LinearLayout;

    .line 112
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 113
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 114
    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->defaultPhoneAppLL:Landroid/widget/LinearLayout;

    const v0, 0x7f09010f

    const-string v1, "field \'defaultPhoneAppDescriptionTV\'"

    .line 115
    const-class v2, Landroid/widget/TextView;

    .line 116
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 117
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->defaultPhoneAppDescriptionTV:Landroid/widget/TextView;

    const v0, 0x7f09032c

    const-string v1, "field \'switchDefaultPhoneApp\' and method \'onDefaultPhoneAppClick\'"

    .line 119
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 120
    const-class v2, Landroidx/appcompat/widget/SwitchCompat;

    const-string v3, "field \'switchDefaultPhoneApp\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->switchDefaultPhoneApp:Landroidx/appcompat/widget/SwitchCompat;

    .line 121
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->t:Landroid/view/View;

    .line 122
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$i;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$i;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f09010e

    const-string v1, "field \'defaultPhoneAppDescriptionHeaderTV\'"

    .line 123
    const-class v2, Landroid/widget/TextView;

    .line 124
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 125
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->defaultPhoneAppDescriptionHeaderTV:Landroid/widget/TextView;

    const v0, 0x7f09008a

    const-string v1, "field \'buttonBuyPro\' and method \'onButtonBuyProClick\'"

    .line 127
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 128
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'buttonBuyPro\'"

    invoke-static {v1, v0, v3, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->buttonBuyPro:Landroid/widget/Button;

    .line 129
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->u:Landroid/view/View;

    .line 130
    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$j;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$j;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c2

    const-string v1, "field \'cardView\'"

    .line 131
    const-class v2, Landroidx/cardview/widget/CardView;

    .line 132
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v3

    .line 133
    invoke-static {v3, v0, v1, v2}, Lc2/c;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 134
    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p1, Lcom/mglab/scm/visual/FragmentPreferences;->cardView:Landroidx/cardview/widget/CardView;

    const v0, 0x7f09015c

    const-string v1, "method \'onExportClick\'"

    .line 135
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 136
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->v:Landroid/view/View;

    .line 137
    new-instance v1, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$l;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$l;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09015d

    const-string v1, "method \'onImportClick\'"

    .line 138
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->w:Landroid/view/View;

    .line 140
    new-instance v1, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$m;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$m;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901d0

    const-string v1, "method \'onLanguageClick\'"

    .line 141
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 142
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->x:Landroid/view/View;

    .line 143
    new-instance v1, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$n;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$n;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901a8

    const-string v1, "method \'onSim1LongClick\'"

    .line 144
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 145
    iput-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->y:Landroid/view/View;

    .line 146
    new-instance v1, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$o;

    invoke-direct {v1, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$o;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0901a9

    const-string v1, "method \'onSim2LongClick\'"

    .line 147
    invoke-static {p2, v0, v1}, Lc2/c;->b(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 148
    iput-object p2, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->z:Landroid/view/View;

    .line 149
    new-instance v0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$p;

    invoke-direct {v0, p0, p1}, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding$p;-><init>(Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;Lcom/mglab/scm/visual/FragmentPreferences;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentPreferences;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->b:Lcom/mglab/scm/visual/FragmentPreferences;

    .line 3
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->switchLoadFeedbackNames:Landroidx/appcompat/widget/SwitchCompat;

    .line 4
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->loadFeedbackNamesDescriptionTV:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->switchShowSIM:Landroidx/appcompat/widget/SwitchCompat;

    .line 6
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->switchBlockSecondCall:Landroidx/appcompat/widget/SwitchCompat;

    .line 7
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->pinEntry:Landroidx/appcompat/widget/SwitchCompat;

    .line 8
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->pinEntryDescription:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->switchHideClearButton:Landroidx/appcompat/widget/SwitchCompat;

    .line 10
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->switchAdditionalPresets:Landroidx/appcompat/widget/SwitchCompat;

    .line 11
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->presetCreateNewButton:Landroid/widget/Button;

    .line 12
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->presetsDescription:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->appOnOffSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 14
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->blockMethodSpinner:Landroid/widget/Spinner;

    .line 15
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->silenceRingerRestoreInfoTV:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->switchSilenceDND:Landroidx/appcompat/widget/SwitchCompat;

    .line 17
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->dndLL:Landroid/widget/LinearLayout;

    .line 18
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->systemVibrationLL:Landroid/widget/LinearLayout;

    .line 19
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->switchSystemVibration:Landroidx/appcompat/widget/SwitchCompat;

    .line 20
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->switchUseAlternativeContactsName:Landroidx/appcompat/widget/SwitchCompat;

    .line 21
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->presetsLL:Landroid/widget/LinearLayout;

    .line 22
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->flagImageView:Landroid/widget/ImageView;

    .line 23
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->languageDescriptionTextView:Landroid/widget/TextView;

    .line 24
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->darkThemeSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 25
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->notificationTextColor:Landroidx/appcompat/widget/SwitchCompat;

    .line 26
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->foregroundServiceLL:Landroid/widget/LinearLayout;

    .line 27
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->switchForegroundService:Landroidx/appcompat/widget/SwitchCompat;

    .line 28
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->switchForegroundServiceIcon:Landroidx/appcompat/widget/SwitchCompat;

    .line 29
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->foregroundServiceIconLL:Landroid/widget/LinearLayout;

    .line 30
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->defaultPhoneAppLL:Landroid/widget/LinearLayout;

    .line 31
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->defaultPhoneAppDescriptionTV:Landroid/widget/TextView;

    .line 32
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->switchDefaultPhoneApp:Landroidx/appcompat/widget/SwitchCompat;

    .line 33
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->defaultPhoneAppDescriptionHeaderTV:Landroid/widget/TextView;

    .line 34
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->buttonBuyPro:Landroid/widget/Button;

    .line 35
    iput-object v1, v0, Lcom/mglab/scm/visual/FragmentPreferences;->cardView:Landroidx/cardview/widget/CardView;

    .line 36
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 37
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->c:Landroid/view/View;

    .line 38
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->d:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 39
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->d:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->e:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 41
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->e:Landroid/view/View;

    .line 42
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->f:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 43
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->f:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->g:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 45
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->g:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->h:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->h:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->i:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->j:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->k:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 53
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->k:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->l:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->m:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->m:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 59
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->n:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->o:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->o:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->p:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 63
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->p:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->q:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->q:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->r:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->r:Landroid/view/View;

    .line 68
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->s:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 69
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->s:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->t:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 71
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->t:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->u:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->v:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->v:Landroid/view/View;

    .line 76
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->w:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->x:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 81
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->y:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 83
    iput-object v1, p0, Lcom/mglab/scm/visual/FragmentPreferences_ViewBinding;->z:Landroid/view/View;

    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
