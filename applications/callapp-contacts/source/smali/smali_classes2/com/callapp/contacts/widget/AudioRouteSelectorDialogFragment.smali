.class public Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;
.super Lcom/google/android/material/bottomsheet/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment$AudioRouteSelectorListener;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "AudioRouteSelectorDialogFragment"


# instance fields
.field private d:Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment$AudioRouteSelectorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;-><init>()V

    return-void
.end method

.method private static a(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4

    .line 155
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAliasName"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 157
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 159
    :goto_0
    const-class v1, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;

    invoke-static {v1, v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 160
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(ILandroid/view/View;)V
    .locals 0

    .line 127
    iget-object p2, p0, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->d:Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment$AudioRouteSelectorListener;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment$AudioRouteSelectorListener;->onAudioRouteSelected(I)V

    .line 128
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->a()V

    return-void
.end method

.method private synthetic a(Landroid/bluetooth/BluetoothDevice;Landroid/view/View;)V
    .locals 1

    .line 144
    iget-object p2, p0, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->d:Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment$AudioRouteSelectorListener;

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment$AudioRouteSelectorListener;->onAudioRouteSelected(I)V

    .line 145
    invoke-static {}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->getInstance()Lcom/callapp/contacts/inCallService/TelecomAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/callapp/contacts/inCallService/TelecomAdapter;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 146
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->a()V

    return-void
.end method

.method private a(Landroid/widget/TextView;ILandroid/telecom/CallAudioState;)V
    .locals 2

    const v0, 0x7f060088

    .line 116
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    .line 117
    invoke-virtual {p3}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v1

    and-int/2addr v1, p2

    if-nez v1, :cond_0

    const/16 p3, 0x8

    .line 118
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p3}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p3

    if-ne p3, p2, :cond_1

    const/4 p3, 0x1

    .line 120
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 121
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 123
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 125
    :cond_1
    :goto_0
    new-instance p3, Lcom/callapp/contacts/widget/-$$Lambda$AudioRouteSelectorDialogFragment$-bk3hbxqiN4ZyFo0rvUreZkZZZM;

    invoke-direct {p3, p0, p2}, Lcom/callapp/contacts/widget/-$$Lambda$AudioRouteSelectorDialogFragment$-bk3hbxqiN4ZyFo0rvUreZkZZZM;-><init>(Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;I)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static d()Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;
    .locals 1

    .line 64
    new-instance v0, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;

    invoke-direct {v0}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$-bk3hbxqiN4ZyFo0rvUreZkZZZM(Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->a(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$D1kymbFizoWEVJCE_I6i619wyjs(Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;Landroid/bluetooth/BluetoothDevice;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->a(Landroid/bluetooth/BluetoothDevice;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 75
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/b;->a(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 77
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_1
    return-object p1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/b;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/b;->onCancel(Landroid/content/DialogInterface;)V

    .line 70
    iget-object p1, p0, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->d:Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment$AudioRouteSelectorListener;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment$AudioRouteSelectorListener;->onAudioRouteSelectorDismiss()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const p3, 0x7f0d005d

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 90
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 91
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1c

    const/4 v1, 0x2

    const/4 v2, 0x0

    const v3, 0x7f0d005c

    const/4 v4, 0x1

    if-lt p2, p3, :cond_3

    .line 93
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telecom/CallAudioState;->getSupportedBluetoothDevices()Ljava/util/Collection;

    move-result-object p2

    .line 94
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 95
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getAudioMode()I

    move-result v6

    if-ne v6, v1, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v6

    if-eq v6, v4, :cond_0

    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/CallAudioState;->getActiveBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const v7, 0x7f060088

    .line 1133
    invoke-static {v7}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v7

    .line 1134
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    invoke-virtual {v8, v3, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1135
    invoke-static {v5}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->a(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v6, :cond_2

    .line 1137
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1138
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1139
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 1140
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1142
    :cond_2
    new-instance v6, Lcom/callapp/contacts/widget/-$$Lambda$AudioRouteSelectorDialogFragment$D1kymbFizoWEVJCE_I6i619wyjs;

    invoke-direct {v6, p0, v5}, Lcom/callapp/contacts/widget/-$$Lambda$AudioRouteSelectorDialogFragment$D1kymbFizoWEVJCE_I6i619wyjs;-><init>(Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    move-object v5, p1

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-virtual {p2, v3, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x7f1200c8

    .line 102
    invoke-virtual {p0, p3}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object p3

    invoke-direct {p0, p2, v1, p3}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->a(Landroid/widget/TextView;ILandroid/telecom/CallAudioState;)V

    .line 104
    move-object p3, p1

    check-cast p3, Landroid/widget/LinearLayout;

    invoke-virtual {p3, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :cond_4
    const p2, 0x7f0a00f5

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->a(Landroid/widget/TextView;ILandroid/telecom/CallAudioState;)V

    const p2, 0x7f0a00f4

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 p3, 0x4

    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->a(Landroid/widget/TextView;ILandroid/telecom/CallAudioState;)V

    const p2, 0x7f0a00f3

    .line 109
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->get()Lcom/callapp/contacts/inCallService/AudioModeProvider;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/inCallService/AudioModeProvider;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object p3

    invoke-direct {p0, p2, v4, p3}, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->a(Landroid/widget/TextView;ILandroid/telecom/CallAudioState;)V

    :cond_5
    return-object p1
.end method

.method public setAudioRouteSelectorListener(Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment$AudioRouteSelectorListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment;->d:Lcom/callapp/contacts/widget/AudioRouteSelectorDialogFragment$AudioRouteSelectorListener;

    return-void
.end method
