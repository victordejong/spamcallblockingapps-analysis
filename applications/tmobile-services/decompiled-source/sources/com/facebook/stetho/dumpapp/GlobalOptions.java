package com.facebook.stetho.dumpapp;

import org.apache.commons.cli.Option;
import org.apache.commons.cli.Options;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/dumpapp/GlobalOptions.class */
public class GlobalOptions {
    public final Option optionHelp = new Option("h", "help", false, "Print this help");
    public final Option optionListPlugins = new Option("l", "list", false, "List available plugins");
    public final Option optionProcess = new Option("p", "process", true, "Specify target process");
    public final Options options;

    public GlobalOptions() {
        Options options = new Options();
        this.options = options;
        options.addOption(this.optionHelp);
        this.options.addOption(this.optionListPlugins);
        this.options.addOption(this.optionProcess);
    }
}
