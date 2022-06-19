.class Lcom/callapp/contacts/widget/SettingsRowSwitch$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/widget/SettingsRowSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field final synthetic b:Lcom/callapp/contacts/widget/SettingsRowSwitch;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/widget/SettingsRowSwitch;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/callapp/contacts/widget/SettingsRowSwitch$1;->b:Lcom/callapp/contacts/widget/SettingsRowSwitch;

    iput-object p2, p0, Lcom/callapp/contacts/widget/SettingsRowSwitch$1;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/callapp/contacts/widget/SettingsRowSwitch$1;->b:Lcom/callapp/contacts/widget/SettingsRowSwitch;

    move-object v1, p1

    check-cast v1, Landroid/widget/Switch;

    invoke-static {v0, v1, p2}, Lcom/callapp/contacts/widget/SettingsRowSwitch;->a(Lcom/callapp/contacts/widget/SettingsRowSwitch;Landroid/widget/Switch;Z)V

    .line 59
    iget-object v0, p0, Lcom/callapp/contacts/widget/SettingsRowSwitch$1;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
